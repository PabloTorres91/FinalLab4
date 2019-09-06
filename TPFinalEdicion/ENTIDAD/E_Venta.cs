using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDAD
{
    public class E_Venta
    {
        private int idVenta;
        private DateTime fechaVenta;
        private string DniCliVenta;
        private float TotalVenta;
        private string ClaveCliVenta;

        public E_Venta() { }

        public int IdVentaIdentity
        {
            get
            { return idVenta; }
            set
            { idVenta = value; }
        }

        public DateTime f_fechaventa
        {
            get
            { return fechaVenta; }
            set
            { fechaVenta = value; }
        }

        public string DNIVenta
        {
            get
            { return DniCliVenta; }
            set
            { DniCliVenta = value; }
        }

        public float TotalPrecioVenta
        {
            get
            { return TotalVenta; }
            set
            { TotalVenta = value; }
        }

        public string ClaveClienteVenta
        {
            get
            { return ClaveCliVenta; }
            set
            { ClaveCliVenta = value; }
        }
    } 
}
