using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace TPFinalC_Nivel3
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgPerfil.ImageUrl = "https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_960_720.png";
            if(!(Page is Login || Page is Default || Page is Registro || Page is Detalle || Page is Error))
            {
                if (!Seguridad.sessionActiva(Session["cliente"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Cliente user = (Cliente)Session["cliente"];
                    lblUser.Text = user.Nombre;
                    if (!string.IsNullOrEmpty(user.ImagenPerfil))
                        imgPerfil.ImageUrl = "~/Images/" + user.ImagenPerfil;
                }
            }

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}