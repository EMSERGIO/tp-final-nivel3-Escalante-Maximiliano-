using Dominio;
using Negocio;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalC_Nivel3
{
    public partial class Default : System.Web.UI.Page
    {
        public bool FiltroAvanzadoCategoria { get; set; }
        public bool FiltroAvanzadoCampo { get; set; }
        public List<Articulos> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltroAvanzadoCategoria = ckbAvanzado.Checked;
            FiltroAvanzadoCampo = ckdFiltroCampo.Checked;
            ArticulosNegocio negocio = new ArticulosNegocio();
            if (!IsPostBack)
            {
                Session.Add("listaArticulos", negocio.listarConSP());
                repRepetidor.DataSource = Session["listaArticulos"];
                repRepetidor.DataBind();
            }

        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCriterio.Items.Clear();
            if (ddlCampo.SelectedItem.ToString() == "Precio")
            {
                ddlCriterio.Items.Add("Igual a");
                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
            }
            else
            {
                ddlCriterio.Items.Add("Contiene");
                ddlCriterio.Items.Add("Comienza con");
                ddlCriterio.Items.Add("Termina con");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtFiltroAvanzado.Text != "")
                {
                    ArticulosNegocio negocio = new ArticulosNegocio();
                    repRepetidor.DataSource = negocio.filtrar(
                        ddlCampo.SelectedItem.ToString(),
                        ddlCriterio.SelectedItem.ToString(),
                        txtFiltroAvanzado.Text);
                    repRepetidor.DataBind();
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnLimpiarFiltro_Click(object sender, EventArgs e)
        {
            ArticulosNegocio negocio = new ArticulosNegocio();
            Session.Add("listaArticulos", negocio.listarConSP());
            repRepetidor.DataSource = Session["listaArticulos"];
            repRepetidor.DataBind();

            txtFiltroAvanzado.Text = string.Empty;
        }

        protected void ckbAvanzado_CheckedChanged(object sender, EventArgs e)
        {

            FiltroAvanzadoCategoria = ckbAvanzado.Checked;
            FiltroAvanzadoCampo = ckdFiltroCampo.Checked;
        }

        protected void btnTelevisores_Click(object sender, EventArgs e)
        {
            List<Articulos> lista = (List<Articulos>)Session["listaArticulos"];
            List<Articulos> listaFiltrada = lista.FindAll(x => x.Categoria.Descripcion.ToUpper().Contains(btnTelevisores.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();
        }

        protected void btnCelulares_Click(object sender, EventArgs e)
        {
            List<Articulos> lista = (List<Articulos>)Session["listaArticulos"];
            List<Articulos> listaFiltrada = lista.FindAll(x => x.Categoria.Descripcion.ToUpper().Contains(btnCelulares.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();

        }

        protected void btnAudio_Click(object sender, EventArgs e)
        {
            List<Articulos> lista = (List<Articulos>)Session["listaArticulos"];
            List<Articulos> listaFiltrada = lista.FindAll(x => x.Categoria.Descripcion.ToUpper().Contains(btnAudio.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();

        }

        protected void btnMedia_Click(object sender, EventArgs e)
        {
            List<Articulos> lista = (List<Articulos>)Session["listaArticulos"];
            List<Articulos> listaFiltrada = lista.FindAll(x => x.Categoria.Descripcion.ToUpper().Contains(btnMedia.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();
        }

    }
}