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
                if (txtEmail.Text != "" && txtPassword.Text != "")
                {

                    cliente.Email = txtEmail.Text;
                    cliente.Pass = txtPassword.Text;
                    if (negocio.Login(cliente))
                    {
                        Session.Add("cliente", cliente);
                        Response.Redirect("Default.aspx", false);

                    }
                    else
                    {
                        Session.Add("error", "User o Password incorrectos");
                        Response.Redirect("Error.aspx", false);
                    }
                }
                else
                {
                    Session.Add("error", "Debe completar todos los campos.");
                    Response.Redirect("Error.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }

        }
        private void Page_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();


            Session.Add("error", exc.ToString());
            Server.Transfer("Error.aspx");
        }
    }
}