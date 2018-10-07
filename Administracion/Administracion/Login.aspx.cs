using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Administracion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBoton_Click(object sender, EventArgs e)
        {
            DataView datos = (DataView)SQLLogueo.Select(DataSourceSelectArguments.Empty);
            string script = "";
            if (datos != null && datos.Count > 0) {
                script = @"<script type='text/javascript'>
                alert('Credenciales Correctas');
                </script>";
            }
            else {
                script = @"<script type='text/javascript'>
                alert('El usuario o la contraseña son incorrectos.');
                </script>";
            }
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, false);
        }

        protected void RegistrarseBoton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}