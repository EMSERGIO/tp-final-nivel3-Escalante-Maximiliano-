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
    public partial class Mi_Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                //devolver la raiz o ruta fisica de la carpeta de imagenes y guardar el archivo, agregando el ID del ususario..
                ClienteNegocio negocio = new ClienteNegocio();
                string ruta = Server.MapPath("./Images/");
                Cliente user = (Cliente)Session["musicoFans"];
                txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id + ".jpg");

                //guardar los datos de la imagen para el perfil de la persona que corresponda...
                user.ImagenPerfil = "perfil-" + user.Id + ".jpg";
                negocio.actualizar(user);

                //capturar todos los datos..
            }
            catch (Exception ex)
            {
                Session.Add("eeror", ex.ToString());
            }
        }
    }
}