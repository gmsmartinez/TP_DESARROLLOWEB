<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoComentarios.aspx.cs" Inherits="WebApplication2.ListadoComentarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link href="css/Estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="fondo">
                <tr>
                    <td>
                        <h1>Listado de comentarios de los alumnos</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="coments">
                            <tr>
                                <td colspan="2">
                                    <asp:GridView ID="gvComentarios" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr id="fila">
                                <td>
                                    <a href="ListadoAlumnos.aspx" class="alink">Ir al listado de alumnos</a>
                                </td>
                                <td>
                                    <a href="IngresoAlumno.aspx" class="alink">Ir al ingreso de alumnos</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
