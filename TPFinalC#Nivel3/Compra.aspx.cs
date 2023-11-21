using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalC_Nivel3
{
    public partial class Compra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // crear tabla en DB para poder agregar productos al carrito...
            //if (!Seguridad.esAdmin(Session["cliente"]))
            //{
            //    Session.Add("error", "Se requiere permiso de Admin para acceder a esta pantalla.");
            //    Response.Redirect("Error.aspx");
            //}
            //string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            //if (id != "" && !IsPostBack)
            //{
            //    ArticulosNegocio negocio = new ArticulosNegocio();
            //    Session.Add("listaArticulos", negocio.listarConSP());
            //    dgvCompra.DataSource = Session["listaArticulos"];
            //    dgvCompra.DataBind();
            //}
        }
        protected void dgvCompra_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvCompra_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}