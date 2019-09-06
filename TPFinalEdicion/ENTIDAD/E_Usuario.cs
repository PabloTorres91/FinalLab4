using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDAD
{
    public class E_Usuario
    {
        private string txtDNIUser;
        private string txtClaveUser;
        private string txtNombreUser;
        private string txtApellUser;
        private DateTime fechaNacUser;
        private string txtMailCli;
        private string txtTelefonoCli;

        public E_Usuario() { }

        //para modificar los datos
        public E_Usuario(string dni,string nombre,string ape,string correo,string fecha,string telef) {
            this.txtDNIUser = dni;
            this.txtNombreUser = nombre;
            this.txtApellUser = ape;
            this.txtMailCli = correo;
            DateTime fec = Convert.ToDateTime(fecha);
            this.fechaNacUser = fec;
            this.txtTelefonoCli = telef;
        }
        //para dar de alta los datos
        public E_Usuario(string s_dniCli, string s_claveCli, string s_nombreCli, string s_apellCli, DateTime d_fechaNacUser, string s_mailCli, string s_telefCli)
        {
            this.txtDNIUser = s_dniCli;
            this.txtClaveUser = s_claveCli;
            this.txtNombreUser = s_nombreCli;
            this.txtApellUser = s_apellCli;
            this.fechaNacUser = d_fechaNacUser;
            this.txtMailCli = s_mailCli;
            this.txtTelefonoCli = s_telefCli;
        }
        //para modificar la clave
        public E_Usuario(string dni,string clave)
        {
            this.txtDNIUser = dni;
            this.txtClaveUser = clave;
        }

        //GETS
        public string gettxtDNIUser()
        {
            return txtDNIUser;
        }
        public string gettxtClaveUser()
        {
            return txtClaveUser;
        }
        public string gettxtNombreUser()
        {
            return txtNombreUser;
        }
        public string gettxtApellUser()
        {
            return txtApellUser;
        }
        public DateTime getfechaNacUser()
        {
            return fechaNacUser;
        }
        public string gettxtMailCli()
        {
            return txtMailCli;
        }
        public string gettxtTelef()
        {
            return txtTelefonoCli;
        }


        //SETS
        public void settxtDNIUser(string dni)
        {
            txtDNIUser = dni;
        }
        public void settxtClaveUser(string clave)
        {
            txtClaveUser = clave;
        }
        public void settxtNombreUser(string nombre)
        {
            txtNombreUser = nombre;
        }
        public void settxtApellUser(string Ape)
        {
            txtApellUser = Ape;
        }
        public void setfechaNacUser(DateTime fecha)
        {
            fechaNacUser = fecha;
        }
        public void setMailCli(string mail)
        {
            txtMailCli = mail;
        }
        public void setTelefono(string telef)
        {
            txtTelefonoCli = telef;
        }

    }
}
