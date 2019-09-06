using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using ENTIDAD;
using DAO;

namespace NEGOCIO
{
    public class N_producto
    {
        public E_Producto buscarProducto(string id)
        {
            AccesoDatos datos = new AccesoDatos();
            SqlConnection conex = datos.ObtenerConexion();
            SqlCommand cmd;
            SqlDataReader dr;
            E_Producto prod = new E_Producto();
            string sql = "select * from Productos where idProd='" + id+"'";
            if (conex != null)
            {
                cmd = new SqlCommand(sql, conex);
                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        prod.Idproducto = Convert.ToInt32(dr[0]);
                        prod.nombreProducto = dr[1].ToString();
                        prod.precioProducto = Convert.ToSingle(dr[3]);
                        prod.categoriaProducto = Convert.ToInt32(dr[2]);
                        prod.imagenProducto = dr[4].ToString();
                        return prod;
                    }
                    else
                        prod.Idproducto = -1;
                    return prod;
                }
                catch (SqlException ex)
                {
                    prod.Idproducto = -1;
                    return prod;
                }
                finally
                {
                    conex.Close();
                }
                }
            prod.Idproducto = -1;
            return prod;
        }
        }
    }
