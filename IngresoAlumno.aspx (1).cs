using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class IngresoAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConexionDBDataContext instancia = new ConexionDBDataContext();
            Alumno persona = new Alumno();
            persona.Nombre = txtnombre.Text;
            persona.Apellido = txtapellido.Text;
            persona.DNI = Convert.ToInt32(txtdni.Text);
            persona.Email = txtemail.Text;
            persona.Turno = turno.SelectedItem.Text;

            instancia.Alumnos.InsertOnSubmit(persona);
            instancia.SubmitChanges();

            crearSesion(sender, e);
            Response.Redirect("MostrarDatos.aspx");
            //label1.Visible = true;
            //label1.Text = "Texto del click";
            //label1.ForeColor = Color.Red;
        }

        protected void crearSesion(object sender, EventArgs e)
        {
            Page.Session["nombre"] = txtnombre.Text;
            Page.Session["apellido"] = txtapellido.Text;
            Page.Session["dni"] = Convert.ToInt32(txtdni.Text);
            Page.Session["email"] = txtemail.Text;
            Page.Session["turno"] = turno.SelectedItem.Text;
        }
    }
}