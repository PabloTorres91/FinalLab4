using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class AccesoDatos
    {
        String rutaBDTP4 = "Data Source=LAPTOP-9PDQJHSR\\SQLEXPRESS; Initial Catalog=TP4; Integrated Security=True";

        public SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaBDTP4);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private SqlDataAdapter ObtenerAdaptador(string consultaSQL, SqlConnection cn)
        {
            SqlDataAdapter adap;
            try
            {
                adap = new SqlDataAdapter(consultaSQL, cn);
                return adap;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable obtenerTabla(string nombreTabla, string sql)
        {
            DataSet ds = new DataSet();
            SqlConnection conex = ObtenerConexion();
            SqlDataAdapter adap = ObtenerAdaptador(sql, conex);
            adap.Fill(ds, nombreTabla);
            conex.Close();
            return ds.Tables[nombreTabla];
        }

        public int EjecutarProcAlmacenado(SqlCommand comando, string nombreSP)
        {
            int filasCambiadas;
            SqlConnection cn = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = comando;
            cmd.Connection = cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nombreSP;
            filasCambiadas = cmd.ExecuteNonQuery();
            cn.Close();
            return filasCambiadas;
        }

    }
}
