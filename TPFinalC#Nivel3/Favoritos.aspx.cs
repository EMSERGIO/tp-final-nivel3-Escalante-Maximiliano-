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
            try
            {
                Cliente user = (Cliente)Session["cliente"];
                string id = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(id) && int.TryParse(id, out int idArticulo))
                {
                    FavoritoNegocio negocio = new FavoritoNegocio();
                    Favorito nuevo = new Favorito();

                    nuevo.IdUser = user.Id;
                    nuevo.IdArticulo = int.Parse(id);

                    negocio.insertarNuevoFavorito(nuevo);
                }
                ListaArticulo = new List<Articulos>();

                if (user != null)
                {
                    FavoritoNegocio negocioart = new FavoritoNegocio();
                    List<int> idArticulosFavoritos = negocioart.listarFavUserId(user.Id);
                    if (idArticulosFavoritos.Count > 0)
                    {
                        ArticulosNegocio art = new ArticulosNegocio();
                        ListaArticulo = art.listarArtById(idArticulosFavoritos);
                        repRepetidor2.DataSource = ListaArticulo;
                        repRepetidor2.DataBind();
                    }


                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }

        }

        protected void btnEliminarFav_Click(object sender, EventArgs e)
        {
            Cliente user = (Cliente)Session["cliente"];
            FavoritoNegocio negocio = new FavoritoNegocio();

            int idArticulo = int.Parse(((Button)sender).CommandArgument);
            int idUser = user.Id;
            negocio.eliminarFavorito(idArticulo, idUser);
            Session.Add("correcto", "Articulo favorito borrado con exito");
            Response.Redirect("Correcto.aspx", false);

            Page_Load(sender, e);

        }
    }
}