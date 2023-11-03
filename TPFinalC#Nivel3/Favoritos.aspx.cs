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
    public partial class Favoritos : System.Web.UI.Page
    {
        public List<Articulos> ListaArticulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (Seguridad.sessionActiva(Session["cliente"]) && !IsPostBack)
            {
                Cliente user = new Cliente();
                FavoritoNegocio negocio = new FavoritoNegocio();
                Articulos seleccionado = (negocio.listarFavorito(user.Id)[0]);
                Favorito nuevo = new Favorito();

                nuevo.IdUser = user.Id;
                nuevo.IdArticulo = seleccionado.Id;

                dgvFavoritos.DataSource = negocio.listarFavorito(user.Id);
                dgvFavoritos.DataBind();


            }
        }

        protected void dgvFavoritos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvFavoritos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvFavoritos.PageIndex = e.NewPageIndex;
            dgvFavoritos.DataBind();
        }
    }
}