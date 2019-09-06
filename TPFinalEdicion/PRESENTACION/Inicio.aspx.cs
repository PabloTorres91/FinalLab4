using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NEGOCIO;
using ENTIDAD;

namespace PRESENTACION
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            N_usuario n_user = new N_usuario();
            E_Usuario e_user = new E_Usuario();

            e_user =n_user.obtenerDatosdeUser(txtUsuario.Text, txtPass.Text);

            bool checkUser = n_user.yaExiste(e_user.gettxtDNIUser());
            bool checkPass = n_user.CheckPass(e_user);


            if (!checkUser && checkPass)//usuario y contraseña están bien
            {
                this.Session["dni"] = txtUsuario.Text;
                this.Session["claveCli"] = txtPass.Text;
                Response.Redirect("PantallaPrincipal.aspx");
            }
            else if (checkUser)//el usuario no se encuentra.
            {
                lblMensaje.Text = "<b> Usuario no registrado</b>";
            }
            else if (!checkPass)
            {
                lblMensaje.Text = "<b>La contraseña ingresada es incorrecta</b>";
            }


            //{
            //    //aca deberia ir un msj de contraseña incorrecta o usuario no registrado, NO LOS DOS!
            //    lblMensaje.Text = "<b>Usuario no registrado, o contraseña incorrecta</b>";
            //    txtUsuario.Text = "";
            //}
        }
    }
}