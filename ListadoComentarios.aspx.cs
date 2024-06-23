using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ListadoComentarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConexionDBDataContext instancia = new ConexionDBDataContext();
            IQueryable consultaLinq = (from t in instancia.Comentarios select new { DNI = t.DNI, Apellido = t.Apellido, Comentario = t.Comentario1 });

            gvComentarios.DataSource = consultaLinq;
            gvComentarios.DataBind();
        }
    }
}