﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LocalServices.Paises
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class CapaEntityFrameworkPaises : DbContext
    {
        public CapaEntityFrameworkPaises()
            : base("name=CapaEntityFrameworkPaises")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<CAPITALES_PAISES> CAPITALES_PAISES { get; set; }
        public DbSet<PAISES> PAISES { get; set; }
    
        public virtual int CREATE_CAPITAL(string nOMBRE_CAPITAL, Nullable<int> nUMERO_HABITANTES_CAPITAL, string iDIOMA_PREDOMINANTE_CAPITAL, Nullable<int> cODIGO_PAIS)
        {
            var nOMBRE_CAPITALParameter = nOMBRE_CAPITAL != null ?
                new ObjectParameter("NOMBRE_CAPITAL", nOMBRE_CAPITAL) :
                new ObjectParameter("NOMBRE_CAPITAL", typeof(string));
    
            var nUMERO_HABITANTES_CAPITALParameter = nUMERO_HABITANTES_CAPITAL.HasValue ?
                new ObjectParameter("NUMERO_HABITANTES_CAPITAL", nUMERO_HABITANTES_CAPITAL) :
                new ObjectParameter("NUMERO_HABITANTES_CAPITAL", typeof(int));
    
            var iDIOMA_PREDOMINANTE_CAPITALParameter = iDIOMA_PREDOMINANTE_CAPITAL != null ?
                new ObjectParameter("IDIOMA_PREDOMINANTE_CAPITAL", iDIOMA_PREDOMINANTE_CAPITAL) :
                new ObjectParameter("IDIOMA_PREDOMINANTE_CAPITAL", typeof(string));
    
            var cODIGO_PAISParameter = cODIGO_PAIS.HasValue ?
                new ObjectParameter("CODIGO_PAIS", cODIGO_PAIS) :
                new ObjectParameter("CODIGO_PAIS", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CREATE_CAPITAL", nOMBRE_CAPITALParameter, nUMERO_HABITANTES_CAPITALParameter, iDIOMA_PREDOMINANTE_CAPITALParameter, cODIGO_PAISParameter);
        }
    
        public virtual int CREATE_PAIS(string nOMBRE_PAIS, Nullable<int> nUMERO_HABITANTES_PAIS, string iDIOMA_PREDOMINANTE_PAIS)
        {
            var nOMBRE_PAISParameter = nOMBRE_PAIS != null ?
                new ObjectParameter("NOMBRE_PAIS", nOMBRE_PAIS) :
                new ObjectParameter("NOMBRE_PAIS", typeof(string));
    
            var nUMERO_HABITANTES_PAISParameter = nUMERO_HABITANTES_PAIS.HasValue ?
                new ObjectParameter("NUMERO_HABITANTES_PAIS", nUMERO_HABITANTES_PAIS) :
                new ObjectParameter("NUMERO_HABITANTES_PAIS", typeof(int));
    
            var iDIOMA_PREDOMINANTE_PAISParameter = iDIOMA_PREDOMINANTE_PAIS != null ?
                new ObjectParameter("IDIOMA_PREDOMINANTE_PAIS", iDIOMA_PREDOMINANTE_PAIS) :
                new ObjectParameter("IDIOMA_PREDOMINANTE_PAIS", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CREATE_PAIS", nOMBRE_PAISParameter, nUMERO_HABITANTES_PAISParameter, iDIOMA_PREDOMINANTE_PAISParameter);
        }
    
        public virtual int DELETE_CAPITAL(Nullable<int> cOD_CAPITAL)
        {
            var cOD_CAPITALParameter = cOD_CAPITAL.HasValue ?
                new ObjectParameter("COD_CAPITAL", cOD_CAPITAL) :
                new ObjectParameter("COD_CAPITAL", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DELETE_CAPITAL", cOD_CAPITALParameter);
        }
    
        public virtual int DELETE_PAIS(Nullable<int> cODIGO_PAIS)
        {
            var cODIGO_PAISParameter = cODIGO_PAIS.HasValue ?
                new ObjectParameter("CODIGO_PAIS", cODIGO_PAIS) :
                new ObjectParameter("CODIGO_PAIS", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DELETE_PAIS", cODIGO_PAISParameter);
        }
    
        public virtual ObjectResult<SELECT_CAPITAL_Result> SELECT_CAPITAL(Nullable<int> cOD_CAPITAL)
        {
            var cOD_CAPITALParameter = cOD_CAPITAL.HasValue ?
                new ObjectParameter("COD_CAPITAL", cOD_CAPITAL) :
                new ObjectParameter("COD_CAPITAL", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SELECT_CAPITAL_Result>("SELECT_CAPITAL", cOD_CAPITALParameter);
        }
    
        public virtual ObjectResult<select_CAPITALES_Result> select_CAPITALES()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_CAPITALES_Result>("select_CAPITALES");
        }
    
        public virtual ObjectResult<SELECT_PAIS_Result> SELECT_PAIS(Nullable<int> cODIGO_PAIS)
        {
            var cODIGO_PAISParameter = cODIGO_PAIS.HasValue ?
                new ObjectParameter("CODIGO_PAIS", cODIGO_PAIS) :
                new ObjectParameter("CODIGO_PAIS", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SELECT_PAIS_Result>("SELECT_PAIS", cODIGO_PAISParameter);
        }
    
        public virtual ObjectResult<select_PAISES_Result> select_PAISES()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_PAISES_Result>("select_PAISES");
        }
    
        public virtual int UPDATE_CAPITAL(Nullable<int> cOD_CAPITAL, string nOMBRE_CAPITAL, Nullable<int> nUMERO_HABITANTES_CAPITAL, string iDIOMA_PREDOMINANTE_CAPITAL, Nullable<int> cODIGO_PAIS)
        {
            var cOD_CAPITALParameter = cOD_CAPITAL.HasValue ?
                new ObjectParameter("COD_CAPITAL", cOD_CAPITAL) :
                new ObjectParameter("COD_CAPITAL", typeof(int));
    
            var nOMBRE_CAPITALParameter = nOMBRE_CAPITAL != null ?
                new ObjectParameter("NOMBRE_CAPITAL", nOMBRE_CAPITAL) :
                new ObjectParameter("NOMBRE_CAPITAL", typeof(string));
    
            var nUMERO_HABITANTES_CAPITALParameter = nUMERO_HABITANTES_CAPITAL.HasValue ?
                new ObjectParameter("NUMERO_HABITANTES_CAPITAL", nUMERO_HABITANTES_CAPITAL) :
                new ObjectParameter("NUMERO_HABITANTES_CAPITAL", typeof(int));
    
            var iDIOMA_PREDOMINANTE_CAPITALParameter = iDIOMA_PREDOMINANTE_CAPITAL != null ?
                new ObjectParameter("IDIOMA_PREDOMINANTE_CAPITAL", iDIOMA_PREDOMINANTE_CAPITAL) :
                new ObjectParameter("IDIOMA_PREDOMINANTE_CAPITAL", typeof(string));
    
            var cODIGO_PAISParameter = cODIGO_PAIS.HasValue ?
                new ObjectParameter("CODIGO_PAIS", cODIGO_PAIS) :
                new ObjectParameter("CODIGO_PAIS", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UPDATE_CAPITAL", cOD_CAPITALParameter, nOMBRE_CAPITALParameter, nUMERO_HABITANTES_CAPITALParameter, iDIOMA_PREDOMINANTE_CAPITALParameter, cODIGO_PAISParameter);
        }
    
        public virtual int UPDATE_PAIS(Nullable<int> cODIGO_PAIS, string nOMBRE_PAIS, Nullable<int> nUMERO_HABITANTES_PAIS, string iDIOMA_PREDOMINANTE_PAIS)
        {
            var cODIGO_PAISParameter = cODIGO_PAIS.HasValue ?
                new ObjectParameter("CODIGO_PAIS", cODIGO_PAIS) :
                new ObjectParameter("CODIGO_PAIS", typeof(int));
    
            var nOMBRE_PAISParameter = nOMBRE_PAIS != null ?
                new ObjectParameter("NOMBRE_PAIS", nOMBRE_PAIS) :
                new ObjectParameter("NOMBRE_PAIS", typeof(string));
    
            var nUMERO_HABITANTES_PAISParameter = nUMERO_HABITANTES_PAIS.HasValue ?
                new ObjectParameter("NUMERO_HABITANTES_PAIS", nUMERO_HABITANTES_PAIS) :
                new ObjectParameter("NUMERO_HABITANTES_PAIS", typeof(int));
    
            var iDIOMA_PREDOMINANTE_PAISParameter = iDIOMA_PREDOMINANTE_PAIS != null ?
                new ObjectParameter("IDIOMA_PREDOMINANTE_PAIS", iDIOMA_PREDOMINANTE_PAIS) :
                new ObjectParameter("IDIOMA_PREDOMINANTE_PAIS", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UPDATE_PAIS", cODIGO_PAISParameter, nOMBRE_PAISParameter, nUMERO_HABITANTES_PAISParameter, iDIOMA_PREDOMINANTE_PAISParameter);
        }
    }
}
