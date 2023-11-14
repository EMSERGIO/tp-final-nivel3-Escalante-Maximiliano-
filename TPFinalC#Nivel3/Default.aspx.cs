using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalC_Nivel3
{
    public partial class Default : System.Web.UI.Page
    {

        public List<Articulos> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticulosNegocio negocio = new ArticulosNegocio();
            ListaArticulos = negocio.listarConSP();
            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulos;
                repRepetidor.DataBind();

            }



            //protected void txtFiltro_TextChanged(object sender, EventArgs e)
            //{
            //    List<Articulos> lista = (List<Articulos>)Session["listaArticulos"];
            //    List<Articulos> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            //    repRepetidor.DataSource = listaFiltrada;
            //    repRepetidor.DataBind();
            //}
        }
    }
}