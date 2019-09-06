<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PRESENTACION.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
            height: 65px;
        }
        .auto-style3 {
            font-style: italic;
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 217px;
            height: 31px;
        }
        .auto-style7 {
            width: 217px;
        }
        .auto-style8 {
            width: 163px;
            height: 31px;
        }
        .auto-style9 {
            width: 163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="height: 485px" >
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <span class="auto-style3">LOGIN<br />
            </span>&nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text="DNI de Usuario:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="180"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese DNI de Usuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="180" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Ingrese Contraseña"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registro.aspx">Registrarse</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" OnClick="BtnAceptar_Click" />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
