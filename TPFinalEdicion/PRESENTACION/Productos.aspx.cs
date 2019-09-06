using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;
using ENTIDAD;

namespace PRESENTACION
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //aca tengo que mandar los datos del list view a detalle productos

            //if (this.Session["dni"] == null)
            //{
            //    this.Session["dni"] = "1234";
            //    this.Session["claveCli"] = "toto";
            //}

            //E_Venta venta = new E_Venta();
            //venta.DNIVenta = this.Session["dni"].ToString();
            //venta.ClaveClienteVenta = this.Session["claveCli"].ToString();
            //venta.f_fechaventa = DateTime.Now;


            //Response.Redirect("DetallesProd.aspx");

        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Comprar")
            {
                //aca voy a enviar el id mediante el argumento... despues lo busco en detalles producto.
                Response.Redirect("DetallesProd.aspx?id="+e.CommandArgument);
                
            }
        }

        
    }
}