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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            ClienteNegocio negocio = new ClienteNegocio();
            try
            {
                cliente.Email = txtEmail.Text;
                cliente.Pass = txtPassword.Text;    
                if (negocio.Login(cliente))
                {
                    Session.Add("cliente", cliente);
                    Response.Redirect("Default.aspx", false);
                    //if (negocio.Login(cliente))
                    //{
                    //    Cliente user = (Cliente)Session["cliente"];
                    //    lblUser.Text = user.Email;
                    //    if (!string.IsNullOrEmpty(user.ImagenPerfil))
                    //        imgPerfil.ImageUrl = "~/Images/" + user.ImagenPerfil;
                    //}

                }
                else
                {
                    Session.Add("error", "User o Password incorrectos");
                    Response.Redirect("Error.aspx", false);
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