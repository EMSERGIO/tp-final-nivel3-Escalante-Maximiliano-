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
                Cliente user = new Cliente();
                ClienteNegocio clienteNegocio = new ClienteNegocio();
                EmailService emailService = new EmailService();

                user.Email = txtEmail.Text;
                user.Pass = txtPassword.Text;
                user.Id = clienteNegocio.insertarNuevo(user);
                Session.Add("musicoFans", user);//queda abierta la session al registrandonos...

                emailService.armarCorreo(user.Email, "Bienvenido Cloiente", "Hola te damos la bienvenida a la aplicacion...");
                emailService.enviarEmail();
                Response.Redirect("Default.aspx", false);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
        }
    }
}