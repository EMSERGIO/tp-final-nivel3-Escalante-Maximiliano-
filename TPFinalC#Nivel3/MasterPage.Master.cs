using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalC_Nivel3
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!(Page is Login || Page is Default || Page is Registro || Page is Detalle))
            {
                if (!Seguridad.sessionActiva(Session["cliente"]))
                    Response.Redirect("Login.aspx", false);
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {

        }
    }
}