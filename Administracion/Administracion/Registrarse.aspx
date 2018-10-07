<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Administracion.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }
        .auto-style2 {
            width: 527px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Carnet:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Carnet" runat="server" Width="251px" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nombres:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Nombres" runat="server" Width="251px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Fecha de nacimiento:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Nacimiento" runat="server" Width="251px" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Correo:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Correo" runat="server" Width="251px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Telefono:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Telefono" runat="server" Width="251px" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Contraseña:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Contra1" runat="server" Width="251px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Repetir contraseña:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Contra2" runat="server" Width="251px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="LoginBoton" runat="server" CssClass="auto-style3" OnClick="LoginBoton_Click" Text="Login" Width="128px" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdministracionConnectionString %>" SelectCommand="crearUsuario" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Nombres" Name="nombre" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="Contra1" Name="Contra" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="Estudiante" Name="Rol" Type="String" />
                                <asp:ControlParameter ControlID="Carnet" DefaultValue="" Name="Carne" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="Nacimiento" DbType="Date" Name="FechaNac" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Correo" Name="correo" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="Telefono" Name="telefono" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdministracionConnectionString %>" SelectCommand="existenciaUsuario" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Correo" Name="usuario" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="RegistrarseBoton" runat="server" OnClick="RegistrarseBoton_Click" Text="Registrarse" Width="144px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
