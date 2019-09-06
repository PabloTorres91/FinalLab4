<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="PRESENTACION.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 79%;
            margin-left: 24px;
        }
        .auto-style2 {
            width: 320px;
        }
        .auto-style3 {
            width: 227px;
        }
        .auto-style4 {
            width: 227px;
            height: 23px;
        }
        .auto-style5 {
            width: 320px;
            height: 23px;
        }
        .auto-style6 {
            width: 227px;
            height: 56px;
        }
        .auto-style7 {
            width: 320px;
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="CUENTA NUEVA"></asp:Label>
            <br />
            Ingrese los datos solicitados:<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">DNI:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDNI" runat="server" Width="233px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDNI" ErrorMessage="Ingrese solo numeros" ValidationExpression="^\d*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNombre" runat="server" Width="233px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese Nombre"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Apellido:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtApellido" runat="server" Width="233px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellido" ErrorMessage="Ingrese Apellido"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Fecha de nacimiento:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtFecha" runat="server" Width="233px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFecha" ErrorMessage="Ingrese Fecha de Nacimiento Valida" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Correo electrónico:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCorreo" runat="server" Width="233px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese Correo Electronico Valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Teléfono:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTelefono" runat="server" Width="233px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese un telefono correcto" ValidationExpression="/(\(?\d{3}\)?[- .]?\d{4}[- .]?\d\d\d\d)|(\(?\d{4}\)?[- .]?\d{3}[- .]?\d\d\d\d)|(\(?\d{5}\)?[- .]?\d{2}[- .]?\d\d\d\d)/"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ingrese un nombre de usuario:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUser" runat="server" Width="233px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUser" ErrorMessage="Ingrese Nombre de Usuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ingrese una contraseña:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPass1" runat="server" Width="233px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Confirmar contraseña:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPass2" runat="server" Width="233px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass2" ControlToValidate="txtPass1" ErrorMessage="Las contraseñas deben coincidir"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnVolver" runat="server" CausesValidation="False" OnClick="btnVolver_Click" Text="Volver Inicio" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
