using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Administracion
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistrarseBoton_Click(object sender, EventArgs e)
        {
            string script = "";
            if (Contra1.Text.Equals(Contra2.Text)) {
                DataView datos = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                if (datos.Count == 0)
                {
                    try
                    {
                        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                        script = @"<script type='text/javascript'>
                        alert('El estudiante se ha creado con exito.');
                        </script>";
                    }
                    catch (Exception)
                    {
                        script = @"<script type='text/javascript'>
                        alert('El estudiante no se ha podidido crear.');
                        </script>";
                        throw;
                    }
                }else{
                    script = @"<script type='text/javascript'>
                        alert('Ya existe un usuario con ese correo en el sistema.');
                        </script>";
                }
                
                Nombres.Text = "";
                Correo.Text = "";
                Carnet.Text = "";
                Telefono.Text = "";
            }
            else {
                script = @"<script type='text/javascript'>
                        alert('Las contraseñas no son iguales.');
                        </script>";
            }
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, false);
        }

        protected void LoginBoton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}