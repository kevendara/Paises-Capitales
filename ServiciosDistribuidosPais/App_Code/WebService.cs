using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hola a todos";
    }

    [WebMethod]
    public LocalServices.Paises.Paises2[] lista_paises()
    {
        return new LocalServices.Paises.Paises_Capitales().lista_paises();
    }

    [WebMethod]
    public int insertar_pais_sp(string NOMBRE_PAIS, int NUMERO_HABITANTES_PAIS, string IDIOMA_PREDOMINANTE_PAIS)
    {
        return new LocalServices.Paises.Paises_Capitales().insert_pais_sp(NOMBRE_PAIS, NUMERO_HABITANTES_PAIS, IDIOMA_PREDOMINANTE_PAIS);
    }

    [WebMethod]
    public int actualizar_pais_sp(int CODIGO_PAIS, string NOMBRE_PAIS, int NUMERO_HABITANTES_PAIS, string IDIOMA_PREDOMINANTE_PAIS)
    {
        return new LocalServices.Paises.Paises_Capitales().update_pais_sp(CODIGO_PAIS, NOMBRE_PAIS, NUMERO_HABITANTES_PAIS, IDIOMA_PREDOMINANTE_PAIS);
    }

    [WebMethod]
    public int eliminar_pais_sp(int CODIGO_PAIS)
    {
        return new LocalServices.Paises.Paises_Capitales().eliminar_pais_sp(CODIGO_PAIS);
    }


    //******************************************* CAPITAL ***************************************************

    [WebMethod]
    public LocalServices.Paises.CapitalesPaises2[] lista_capitales()
    {
        return new LocalServices.Paises.Paises_Capitales().lista_capitales();
    }

    [WebMethod]
    public int insertar_capital_sp(string NOMBRE_CAPITAL, int NUMERO_HABITANTES_CAPITAL,
            string IDIOMA_PREDOMINANTE_CAPITAL, int CODIGO_PAIS)
    {
        return new LocalServices.Paises.Paises_Capitales().insertar_capital_sp(NOMBRE_CAPITAL, NUMERO_HABITANTES_CAPITAL,
             IDIOMA_PREDOMINANTE_CAPITAL, CODIGO_PAIS);
    }

    [WebMethod]
    public int actualizar_capital_sp(int COD_CAPITAL, string NOMBRE_CAPITAL, int NUMERO_HABITANTES_CAPITAL,
            string IDIOMA_PREDOMINANTE_CAPITAL, int CODIGO_PAIS)
    {
        return new LocalServices.Paises.Paises_Capitales().actualizar_capital_sp(COD_CAPITAL, NOMBRE_CAPITAL, NUMERO_HABITANTES_CAPITAL,
             IDIOMA_PREDOMINANTE_CAPITAL, CODIGO_PAIS);
    }

    [WebMethod]
    public int eliminar_capital_sp(int COD_CAPITAL)
    {
        return new LocalServices.Paises.Paises_Capitales().eliminar_capital_sp(COD_CAPITAL);
    }
}
