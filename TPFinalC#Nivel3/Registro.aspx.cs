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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;

                Cliente user = new Cliente();
                ClienteNegocio clienteNegocio = new ClienteNegocio();
                EmailService emailService = new EmailService();

                if (txtEmail.Text != "" && txtPassword.Text != "")
                {
                    user.Email = txtEmail.Text;
                    user.Pass = txtPassword.Text;
                    user.Id = clienteNegocio.insertarNuevo(user);
                    Session.Add("cliente", user);

                    emailService.armarCorreo(user.Email, "Bienvenido Cliente", "Hola te damos la bienvenida a la aplicacion...");
                    emailService.enviarEmail();
                    Response.Redirect("Default.aspx", false);
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
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}