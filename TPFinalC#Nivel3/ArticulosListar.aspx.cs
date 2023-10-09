using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPFinalC_Nivel3
{
    public partial class ArticulosListar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticulosNegocio negocio = new ArticulosNegocio();
            dgvArticulos.DataSource = negocio.listarConSP();
            dgvArticulos.DataBind();
        }
    }
}