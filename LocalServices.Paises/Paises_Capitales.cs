using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalServices.Paises
{
    public class Paises_Capitales
    {
        public Paises2[] lista_paises()
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                var lst = from p in ctx.PAISES select p;
                Paises2[] r = new Paises2[lst.Count()];
                int i = 0;

                foreach (var p in lst)
                {
                    r[i++] = new Paises2
                    {
                        CODIGO_PAIS=p.CODIGO_PAIS,
                        NOMBRE_PAIS=p.NOMBRE_PAIS,
                        NUMERO_HABITANTES_PAIS=p.NUMERO_HABITANTES_PAIS,
                        IDIOMA_PREDOMINANTE_PAIS=p.IDIOMA_PREDOMINANTE_PAIS
                    };
                }
                return r;
            }
        }

        public int insert_pais_sp( string NOMBRE_PAIS, int NUMERO_HABITANTES_PAIS, string IDIOMA_PREDOMINANTE_PAIS)
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                ctx.CREATE_PAIS(NOMBRE_PAIS,  NUMERO_HABITANTES_PAIS,  IDIOMA_PREDOMINANTE_PAIS);
                return 0;
            }

        }

        public int update_pais_sp(int CODIGO_PAIS, string NOMBRE_PAIS, int NUMERO_HABITANTES_PAIS, string IDIOMA_PREDOMINANTE_PAIS)
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                ctx.UPDATE_PAIS(CODIGO_PAIS, NOMBRE_PAIS, NUMERO_HABITANTES_PAIS, IDIOMA_PREDOMINANTE_PAIS);
                return 0;
            }

        }


        public int eliminar_pais_sp(int CODIGO_PAIS)
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                ctx.DELETE_PAIS(CODIGO_PAIS);
                return 0;
            }

        }


        //******************************************* LIBROS ***************************************************

        public CapitalesPaises2[] lista_capitales()
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                var lst = from c in ctx.CAPITALES_PAISES select c;
                CapitalesPaises2[] r = new CapitalesPaises2[lst.Count()];
                int i = 0;

                foreach (var c in lst)
                {
                    r[i++] = new CapitalesPaises2
                    {
                        COD_CAPITAL=c.COD_CAPITAL,
                        NOMBRE_CAPITAL=c.NOMBRE_CAPITAL,
                        NUMERO_HABITANTES_CAPITAL=c.NUMERO_HABITANTES_CAPITAL,
                        IDIOMA_PREDOMINANTE_CAPITAL=c.IDIOMA_PREDOMINANTE_CAPITAL,
                        CODIGO_PAIS=c.CODIGO_PAIS
                    };
                }
                return r;
            }
        }

        public int insertar_capital_sp(string NOMBRE_CAPITAL, int NUMERO_HABITANTES_CAPITAL, 
            string IDIOMA_PREDOMINANTE_CAPITAL, int CODIGO_PAIS)
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                ctx.CREATE_CAPITAL( NOMBRE_CAPITAL,  NUMERO_HABITANTES_CAPITAL, 
             IDIOMA_PREDOMINANTE_CAPITAL,  CODIGO_PAIS);
                return 0;
            }

        }

        public int actualizar_capital_sp(int COD_CAPITAL, string NOMBRE_CAPITAL, int NUMERO_HABITANTES_CAPITAL,
            string IDIOMA_PREDOMINANTE_CAPITAL, int CODIGO_PAIS)
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                ctx.UPDATE_CAPITAL( COD_CAPITAL, NOMBRE_CAPITAL, NUMERO_HABITANTES_CAPITAL,
             IDIOMA_PREDOMINANTE_CAPITAL, CODIGO_PAIS);
                return 0;
            }

        }


        public int eliminar_capital_sp(int COD_CAPITAL)
        {
            using (var ctx = new CapaEntityFrameworkPaises())
            {
                ctx.DELETE_CAPITAL(COD_CAPITAL);
                return 0;
            }

        }
    }
}
