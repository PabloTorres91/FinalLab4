using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDAD
{
    public class E_Producto
    {
        private int idProd;
        private string NombreProd;
        private int CatProd;
        private float precioProd;
        private string ImagenProd;

        public E_Producto() { }

        public int Idproducto
        {
            get
            { return idProd; }
            set
            { idProd = value; }
        }

        public string nombreProducto
        {
            get
            { return NombreProd; }
            set
            { NombreProd = value; }
        }

        public int categoriaProducto
        {
            get
            { return CatProd; }
            set
            { CatProd = value; }
        }

        public float precioProducto
        {
            get
            { return precioProd; }
            set
            { precioProd = value; }
        }

        public string imagenProducto
        {
            get
            { return ImagenProd; }
            set
            { ImagenProd = value; }
        }
    }
}
