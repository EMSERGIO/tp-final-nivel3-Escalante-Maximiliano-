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
        public bool ConfirmaEliminacion { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            ConfirmaEliminacion = false;
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
                    btnElminar.Enabled = false;

                }
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if(id != "" && !IsPostBack)
                {
                    ArticulosNegocio negocio = new ArticulosNegocio();
                    Articulos seleccionado = (negocio.listar(id)[0]);

                    txtId.Text = id;
                    txtCodigo.Text = seleccionado.Codigo;
                    txtNombre.Text = seleccionado.Nombre;
                    txtDescripcion.Text = seleccionado.Descripcion;
                    txtUrlImagen.Text = seleccionado.UrlImagen;
                    txtPrecio.Text = seleccionado.Precio.ToString();
                    ddlMarcas.SelectedValue = seleccionado.Marcas.Id.ToString();
                    ddlCategoria.SelectedValue = seleccionado.Categoria.Id.ToString();
                    txtUrlImagen_TextChanged(sender, e);
                    btnElminar.Enabled = true;

                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
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
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtUrlImagen.Text;
                nuevo.Precio = Decimal.Parse(txtPrecio.Text);

                nuevo.Marcas = new Marcas();
                nuevo.Marcas.Id = int.Parse(ddlMarcas.SelectedValue);
                nuevo.Categoria = new Categoria();
                nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);
                if (Request.QueryString["id"] != null)
                {
                    nuevo.Id = int.Parse(txtId.Text);
                    negocio.modificarConSP(nuevo);
                }
                else
                     negocio.agregarConSP(nuevo);


                Response.Redirect("ArticulosListar.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgArticulos.ImageUrl = txtUrlImagen.Text;
        }

        protected void btnElminar_Click(object sender, EventArgs e)
        {
            ConfirmaEliminacion = true;
        }

        protected void btnConfirmaEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if(chkConfirmarEliminacion.Checked)
                {
                    ArticulosNegocio negocio = new ArticulosNegocio();
                    negocio.eliminar(int.Parse(txtId.Text));
                    Response.Redirect("ArticulosListar.aspx", false);

                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }
    }
}