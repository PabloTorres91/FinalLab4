using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            N_usuario us = new N_usuario();
            if (us.yaExiste(txtDNI.Text) == true)
                //si es true, significa que NO existe el dni...
            {
                us.IngresarUser(txtDNI.Text, txtNombre.Text, txtApellido.Text, txtPass1.Text, txtCorreo.Text, txtTelefono.Text, txtFecha.Text);
                lblMensaje.Text = "El registro ha sido exitoso.";
            }
            else
            //si es false, significa que YA existe!
            {
                lblMensaje.Text = "El DNI ya tiene una cuenta existente. Imposible guardar registro.";
                txtDNI.Text = "";
                txtNombre.Text = "";
                txtPass1.Text = "";
                txtCorreo.Text = "";
                txtTelefono.Text = "";
                txtFecha.Text = "";
                txtPass2.Text = "";
                txtUser.Text = "";
                txtApellido.Text = "";
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}