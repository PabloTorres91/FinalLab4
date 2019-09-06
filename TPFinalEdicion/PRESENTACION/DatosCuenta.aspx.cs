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
    public partial class DatosCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtNombreEdit.Text = this.Session["dni"].ToString();
        }

        protected void btnModif1_Click(object sender, EventArgs e)
        {
            if (this.Session["dni"] == null)
            {
                this.Session["dni"]= "1234";
            }
            N_usuario us = new N_usuario();
            E_Usuario user = new E_Usuario(this.Session["dni"].ToString(), txtNombreEdit.Text, txtApeEdit.Text, txtMailEdit.Text, txtFechaNacEdit.Text,txtTelefEdit.Text);
            us.actualizarUser(user);
            txtNombreEdit.Text = "";
            txtApeEdit.Text = "";
            txtMailEdit.Text = "";
            txtTelefEdit.Text = "";
            txtFechaNacEdit.Text = "";
            lblmsj1.Text = "El registro ha sido modificado con exito.";
        }

        protected void btnModifUC0_Click(object sender, EventArgs e)
        {
            if (this.Session["dni"] == null)
            {
                this.Session["dni"] = "1234";
            }
            N_usuario us = new N_usuario();
            E_Usuario user = new E_Usuario(this.Session["dni"].ToString(),txtPassNueva.Text);
            //antes de actualziar, tengo que fijarme si la contraseña esta bien!

            //if (us.obtenerDatosdeUser(this.Session["dni"].ToString(), txtPass.Text) == true)

            if (us.obtenerDatosdeUser(this.Session["dni"].ToString(), txtPass.Text).gettxtDNIUser() != "-100" )
                {
                    us.actualizarPass(user);
                txtPass.Text = "";
                txtPassNueva.Text = "";
                txtPassNueva2.Text = "";
                lblmsj2.Text = "El cambio de contraseña ha sido exitoso.";
            }
            else
            {
                lblmsj2.Text = "Su contraseña es incorrecta.";
            }
        }

        protected void btnVolverPP_Click(object sender, EventArgs e)
        {
            Response.Redirect("PantallaPrincipal.aspx");
        }
    }
}