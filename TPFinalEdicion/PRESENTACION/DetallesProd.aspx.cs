using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ENTIDAD;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class DetallesProd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idprod;
            idprod = Request.QueryString["id"];
            lblCat.Text = idprod;

            //ahora tengo que buscar el producto en la tabla productos.

            E_Producto prod = new E_Producto();
            N_producto nprod = new N_producto();
            prod= nprod.buscarProducto(idprod);

            Image1.ImageUrl = prod.imagenProducto;
            lblPrecio.Text = prod.precioProducto.ToString();
            lblCat.Text = prod.categoriaProducto.ToString();
            NombreProd.Text = prod.nombreProducto;


            if (this.Session["CARRITO"] == null)
            {
                this.Session["CARRITO"] = CrearCarrito();
            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            //ya tengo todos los datos, ahora tengo qe guardar en un data table para poder despues ejecutar la compra!
            //1) crear el data table en una variable session
            string idprod;
            idprod = Request.QueryString["id"];
            
            //aca el chabon ya quiere agregar al carrito, si no existe, tengo qe crearlo!
            
            
            E_Producto prod = new E_Producto();
            prod.nombreProducto = NombreProd.ToString();
            prod.precioProducto = Convert.ToSingle(lblPrecio.Text);

            agregarCarrito((DataTable)this.Session["CARRITO"],prod);
            
        }

        void agregarCarrito(DataTable dt,E_Producto prod)
        {
            DataRow dr = dt.NewRow();
            dr["Id Producto"] = prod.Idproducto;
            dr["Nombre Producto"] = prod.nombreProducto;
            dr["Precio Producto"] = prod.precioProducto;
            dt.Rows.Add(dr);
        }

        public static DataTable CrearCarrito()
        {
            DataTable dt = new DataTable();
            //el DataTable de la cesta tendrá
            //tres campos: idLibro, titulo y precio
            DataColumn dc = new DataColumn("idLibro", System.Type.GetType("System.Int32"));
            dt.Columns.Add(dc);
            dc = new DataColumn("nombreProducto", System.Type.GetType("System.String"));
            dt.Columns.Add(dc);
            dc = new DataColumn("precioProducto", System.Type.GetType("System.Decimal"));
            dt.Columns.Add(dc);
            return dt;
        }
    }
}