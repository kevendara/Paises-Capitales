using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalServices.Paises
{
    public class CapitalesPaises2
    {
        public int COD_CAPITAL { get; set; }
        public string NOMBRE_CAPITAL { get; set; }
        public int NUMERO_HABITANTES_CAPITAL { get; set; }
        public string IDIOMA_PREDOMINANTE_CAPITAL { get; set; }
        public int CODIGO_PAIS { get; set; }
    }

    public class Paises2
    {
        public int CODIGO_PAIS { get; set; }
        public string NOMBRE_PAIS { get; set; }
        public int NUMERO_HABITANTES_PAIS { get; set; }
        public string IDIOMA_PREDOMINANTE_PAIS { get; set; }
    }
}
