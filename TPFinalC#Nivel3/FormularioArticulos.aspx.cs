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
    public partial class FormularioArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            try
            {

                if (!IsPostBack)
                {
                    MarcasNegocio negocio = new MarcasNegocio();
                    List<Marcas> lista = negocio.listar();
                    CategoriaNegocio negocio1 = new CategoriaNegocio();
                    List<Categoria> lista1 = negocio1.listar();

                    ddlMarcas.DataSource = lista;
                    ddlMarcas.DataValueField = "Id";
                    ddlMarcas.DataTextField = "Descripcion";
                    ddlMarcas.DataBind();

                    ddlCategoria.DataSource = lista1;
                    ddlCategoria.DataValueField = "Id";
                    ddlCategoria.DataTextField = "Descripcion";
                    ddlCategoria.DataBind();

                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw; //dirigir a una pantalla de error
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Articulos nuevo = new Articulos();
                ArticulosNegocio negocio = new ArticulosNegocio();

                nuevo.Codigo = txtCodigo.Text;
                nuevo.Nombre = txtNombre.Text;
                nuevo.Precio = int.Parse(txtPrecio.Text);
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtUrlImagen.Text;

                nuevo.Marcas = new Marcas();
                nuevo.Marcas.Id = int.Parse(ddlMarcas.SelectedValue);
                nuevo.Categoria = new Categoria();
                nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);

                negocio.agregar(nuevo);
                Response.Redirect("ArticulosListar.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgArticulos.ImageUrl = txtUrlImagen.Text;
        }
    }
}