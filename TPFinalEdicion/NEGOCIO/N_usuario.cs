using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DAO;
using ENTIDAD;


namespace NEGOCIO
{
    public class N_usuario
    {
        public E_Usuario obtenerDatosdeUser(string user, string clave)
        {
            AccesoDatos datos = new AccesoDatos();
            SqlConnection conex = datos.ObtenerConexion();
            SqlCommand cmd;
            SqlDataReader dr;
            //string sql = "select * from Clientes where DniCli='" + user + "' AND ClaveCli='" + clave + "'";
            string sql = "select * from Clientes where DniCli='" + user + "'";
            E_Usuario cli = new E_Usuario();
            if (conex != null)
            {
                cmd = new SqlCommand(sql, conex);
                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        //encontró un usuario
                        cli.settxtDNIUser(dr["DniCli"].ToString());
                        cli.settxtNombreUser(dr["NombreCli"].ToString());
                        cli.settxtApellUser(dr["ApellidoCli"].ToString());
                        cli.setfechaNacUser(Convert.ToDateTime(dr["fechaNacCli"]));
                        cli.setMailCli(dr["MailCli"].ToString());
                        cli.setTelefono(dr["TelefonoCli"].ToString());
                        cli.settxtClaveUser(clave);

                        return cli;
                    }
                    else
                    {
                        //si llega aca, significa que no encontro al usuario.
                        //retorno el obj cli completo para que chequeemos la clave en la devolución.
                        string value = "-100";
                        cli.settxtDNIUser(value);
                        return cli;
                    }
                }
                catch (SqlException ex)
                {
                    cli.settxtDNIUser("-200");
                    return cli;
                }
                finally
                {
                    conex.Close();
                }
            }
            cli.settxtDNIUser("-300");
            return cli;
        }

        public bool yaExiste(string dni)
        {
            AccesoDatos datos = new AccesoDatos();
            SqlConnection conex = datos.ObtenerConexion();
            SqlCommand cmd;
            SqlDataReader dr;
            string sql = "select * from Clientes where DniCli='" + dni + "'";
            if (conex != null)
            {
                cmd = new SqlCommand(sql, conex);
                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        if (dr[0].ToString() == dni)
                        {
                            return false;//significa que ya existe un DNI
                        }
                        else
                            return true;//no existe el dni, puede ser usado
                    }
                    else
                    {
                        return true;//no existe el dni, puede ser usado
                    }
                }
                catch (SqlException ex)
                {
                    return true;//no existe el dni, puede ser usado
                }
                finally
                {
                    conex.Close();
                }
            }
            return true;//no existe el dni, puede ser usado
        }

        public bool CheckPass(E_Usuario userToCheck)
        {
            AccesoDatos datos = new AccesoDatos();
            SqlConnection conex = datos.ObtenerConexion();
            SqlCommand cmd;
            SqlDataReader dr;
            string sql = "Select * from Clientes where DniCli='" + userToCheck.gettxtDNIUser() + "' AND ClaveCli = '" + userToCheck.gettxtClaveUser() + "'";
            if(conex != null)
            {
                cmd = new SqlCommand(sql, conex);
                try
                {
                    dr = cmd.ExecuteReader();
                    if(dr.Read())
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public bool IngresarUser(string dni, string nom, string ape, string clave, string mail, string tel, string fec)
        {
            AccesoDatos datos = new AccesoDatos();
            SqlConnection conex = datos.ObtenerConexion();
            DateTime fechaNacUser = Convert.ToDateTime(fec);
            if (conex != null)
            {
                SqlCommand cmd;
                string sql = "Insert into Clientes values(";
                sql += "'" + dni + "',";
                sql += "'" + nom + "',";
                sql += "'" + ape + "',";
                sql += "'" + fechaNacUser + "',";
                sql += "'" + mail + "',";
                sql += "'" + tel + "',";
                sql += "'" + clave + "')";
                cmd = new SqlCommand(sql, conex);

                try
                {
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (SqlException ex)
                {
                    return false;
                }
                finally
                {
                    conex.Close();
                }
            }
            else
            {
                return false;
            }
        }

        public bool actualizarUser(E_Usuario user)
        {
            SqlCommand cmd = new SqlCommand();
            armarParams(ref cmd, user);
            AccesoDatos datos = new AccesoDatos();
            int cant = datos.EjecutarProcAlmacenado(cmd, "actualizarDatosCli");
            if (cant == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool actualizarPass(E_Usuario user)
        {
            SqlCommand cmd = new SqlCommand();
            armarParams2(ref cmd, user);
            AccesoDatos datos = new AccesoDatos();
            int cant = datos.EjecutarProcAlmacenado(cmd, "actualizarPass");
            if (cant == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void armarParams2(ref SqlCommand cmd,E_Usuario user)
        {
            SqlParameter sqlparams = new SqlParameter();

            sqlparams = cmd.Parameters.Add("@DNI", SqlDbType.VarChar, 20);
            sqlparams.Value = user.gettxtDNIUser();

            sqlparams = cmd.Parameters.Add("@newPass", SqlDbType.VarChar, 30);
            sqlparams.Value = user.gettxtClaveUser();
        }

        public void armarParams(ref SqlCommand com, E_Usuario user)
        {
            SqlParameter sqlparams = new SqlParameter();

            sqlparams = com.Parameters.Add("@DNI", SqlDbType.VarChar,20);
            sqlparams.Value = user.gettxtDNIUser();

            sqlparams = com.Parameters.Add("@NombreCli", SqlDbType.NChar,10);
            sqlparams.Value = user.gettxtNombreUser();

            sqlparams = com.Parameters.Add("@ApellidoCli", SqlDbType.NChar, 10);
            sqlparams.Value = user.gettxtApellUser();

            sqlparams = com.Parameters.Add("@fechaNacUserCli", SqlDbType.Date);
            sqlparams.Value = user.getfechaNacUser();

            sqlparams = com.Parameters.Add("@MailCli", SqlDbType.VarChar,50);
            sqlparams.Value = user.gettxtMailCli();

            sqlparams = com.Parameters.Add("@TelefonoCli", SqlDbType.NChar, 20);
            sqlparams.Value = user.gettxtTelef();
        }

        

    }
}
