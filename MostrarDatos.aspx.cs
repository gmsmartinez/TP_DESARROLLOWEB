using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MostrarDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblapellidoIngresado.InnerText = Page.Session["apellido"].ToString();
            lblnombreIngresado.InnerText = Page.Session["nombre"].ToString();
            lbldniIngresado.InnerText = Page.Session["dni"].ToString();
            lblemailIngresado.InnerText = Page.Session["email"].ToString();
            lblTurnoIngresado.InnerText = Page.Session["turno"].ToString();

        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            ConexionDBDataContext instancia = new ConexionDBDataContext();
            Comentario coment = new Comentario();
            coment.DNI = Convert.ToInt32(Page.Session["dni"].ToString());
            coment.Apellido = Page.Session["apellido"].ToString();
            coment.Comentario1 = txtcomentario.Text;

            instancia.Comentarios.InsertOnSubmit(coment);
            instancia.SubmitChanges();

            Response.Redirect("IngresoAlumno.aspx");
        }
    }
}