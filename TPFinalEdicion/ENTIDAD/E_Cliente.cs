using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDAD
{
    public class E_Cliente
    {
        private string DniCli;
        private string NombreCli;
        private string ApellidoCli;
        private string fechaNacCli;
        private string MailCli;
        private string TelefonoCli;

        public E_Cliente() { }

        public string getDniCli()
        {
            return DniCli;
        }
        public string getNombreCli()
        {
            return NombreCli;
        }
        public string getApellidoCli()
        {
            return ApellidoCli;
        }
        public string getfechaNacCli()
        {
            return fechaNacCli;
        }
        public string getMailCli()
        {
            return MailCli;
        }
        public string getTelefonoCli()
        {
            return TelefonoCli;
        }
        //SETS
        public void setDniCli(string dni)
        {
            DniCli=dni;
        }
        public void setNombreCli(string nombre)
        {
            NombreCli = nombre;
        }
        public void setApellidoCli(string apellido)
        {
            ApellidoCli = apellido;
        }
        public void setfechaNacCli(string fecha)
        {
            fechaNacCli= fecha;
        }
        public void setMailCli(string Mail)
        {
            MailCli = Mail;
        }
        public void setTelefonoCli(string telefono)
        {
            TelefonoCli = telefono;
        }
    }
}
