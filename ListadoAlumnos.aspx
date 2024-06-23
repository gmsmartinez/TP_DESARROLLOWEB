<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoAlumnos.aspx.cs" Inherits="WebApplication2.ListadoAlumnos" EnableEventValidation="false" %>

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
                            <h1>Listado de Alumnos</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="coments">
                                <tr>
                                    <td colspan="2">
                                        <asp:GridView ID="gvAlumnos" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                            <Columns>
                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="MyButtonClick" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr id="fila">
                                    <td>
                                        <a href="IngresoAlumno.aspx" class="alink">Ir al ingreso de alumnos</a>
                                    </td>
                                    <td>
                                        <a href="ListadoComentarios.aspx" class="alink">Ir al listado de comentarios</a>
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
