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
        }

        //protected void Unnamed_Click(object sender, EventArgs e)
        //{
        //    string id = SelectedDataKey.Value.ToString();
        //    Response.Redirect("FormularioArticulos.aspx?id=" + id);
        //    Response.Redirect("Detalle.aspx", false);
        //}

        //protected void verDetalle_Click(object sender, EventArgs e)
        //{
        //    string id = verDetalle.SelectedDateKey.ToString();
        //    Response.Redirect("Detalle.aspx?id=" + id);
        //}
    }
}