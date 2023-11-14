using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TPFinalC_Nivel3
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (id != "" && !IsPostBack)
            {
                ArticulosNegocio negocio = new ArticulosNegocio();
                Articulos seleccionado = (negocio.listar(id)[0]);

                txtUrlImagen.Text = seleccionado.UrlImagen;
                txtUrlImagen_TextChanged(sender, e);
                txtNombre.Text = seleccionado.Nombre;
                txtNombre.ReadOnly = true;
                txtDescripcion.Text = seleccionado.Descripcion;
                txtDescripcion.ReadOnly = true;
                txtPrecio.Text = seleccionado.Precio.ToString("$0.00");
                txtPrecio.ReadOnly = true;
            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgArticulos.ImageUrl = txtUrlImagen.Text;
        }
    }
    
}