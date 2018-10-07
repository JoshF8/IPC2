<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Administracion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 31px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 31px;
            height: 26px;
        }
        .auto-style6 {
            width: 46px;
            height: 26px;
        }
        .auto-style7 {
            width: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">Usuario:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Usuario" runat="server" Width="211px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Contraseña:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Contra" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="RegistrarseBoton" runat="server" CssClass="auto-style3" OnClick="RegistrarseBoton_Click" Text="Registrarse" Width="128px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="LoginBoton" runat="server" CssClass="auto-style3" OnClick="LoginBoton_Click" Text="Login" Width="128px" />
                        <asp:SqlDataSource ID="SQLLogueo" runat="server" ConnectionString="<%$ ConnectionStrings:AdministracionConnectionString %>" SelectCommand="logueo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Usuario" Name="usuario" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="Contra" Name="password" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="ContraBoton" runat="server" CssClass="auto-style3" OnClick="LoginBoton_Click" Text="Olvidé mi contraseña" Width="128px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
