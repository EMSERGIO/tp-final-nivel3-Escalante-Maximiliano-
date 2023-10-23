using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ClienteNegocio
    {
        public int insertarNuevo(Cliente nuevo)
        {
			AccesoDatos datos = new AccesoDatos();
			try
			{
				datos.setearProcedimiento("insertarNuevo");
				datos.setearParametro("@email", nuevo.Email);
                datos.setearParametro("@pass", nuevo.Pass);
				return datos.ejecutarAccionScalar();

			}
			catch (Exception ex)
			{
				throw ex;
			}
			finally
			{
				datos.cerrarConexion();
			}
        }
        public void actualizar(Cliente user)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Update USERS set imagenPerfil = @imagen where ID = @id");
                datos.setearParametro("@imagen", user.ImagenPerfil);
                datos.setearParametro("@id", user.Id);
                datos.ejecutarAccion();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public bool Login(Cliente cliente)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Select id, email, pass, admin from USERS Where email = @email And pass = @pass");
                datos.setearParametro("@email", cliente.Email);
                datos.setearParametro("@pass", cliente.Pass);
                datos.ejecutarLectura();
                if (datos.Lector.Read())
                {
                    cliente.Id = (int)datos.Lector["id"];
                    cliente.Admin = (bool)datos.Lector["admin"];
                    return true;
                }
                return false;

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { datos.cerrarConexion(); }
        }
    }
}
