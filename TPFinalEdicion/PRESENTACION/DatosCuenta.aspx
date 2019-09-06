<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DatosCuenta.aspx.cs" Inherits="PRESENTACION.DatosCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style4 {
            width: 173px;
        }
        .auto-style6 {
            width: 173px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 50%;
            margin-left: 0px;
        }
        .auto-style9 {
            height: 25px;
        }
        .auto-style10 {
            width: 173px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style4">Nombre:</td>
            <td>
        <asp:TextBox ID="txtNombreEdit" runat="server" ValidationGroup="1111"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreEdit" ErrorMessage="Ingrese Nombre" ValidationGroup="1111"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Apellido:</td>
            <td>
        <asp:TextBox ID="txtApeEdit" runat="server" ValidationGroup="1111"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApeEdit" ErrorMessage="Ingrese Apellido" ValidationGroup="1111"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Fecha de Nacimiento:</td>
            <td>
        <asp:TextBox ID="txtFechaNacEdit" runat="server" ValidationGroup="1111"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFechaNacEdit" ErrorMessage="Ingrese Fecha de Nacimiento Valida" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ValidationGroup="1111"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Correo Electronico:</td>
            <td>
        <asp:TextBox ID="txtMailEdit" runat="server" ValidationGroup="1111"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMailEdit" ErrorMessage="Ingrese Correo Electronico Valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1111"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Telefono:</td>
            <td class="auto-style7">
        <asp:TextBox ID="txtTelefEdit" runat="server" ValidationGroup="1111"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefEdit" ErrorMessage="Ingrese un telefono correcto" ValidationExpression="/(\(?\d{3}\)?[- .]?\d{4}[- .]?\d\d\d\d)|(\(?\d{4}\)?[- .]?\d{3}[- .]?\d\d\d\d)|(\(?\d{5}\)?[- .]?\d{2}[- .]?\d\d\d\d)/" ValidationGroup="1111"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
    <table class="auto-style8" style="text-align:center;">
        <tr>
            <td class="auto-style10">
        <asp:Button ID="btnModif1" runat="server" Text="Modificar datos" OnClick="btnModif1_Click" ValidationGroup="1111" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsj1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style4">Ingresar&nbsp; contraseña:</td>
            <td>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" ValidationGroup="grupo1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPass" ErrorMessage="Debe ingresar su contraseña"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Ingresar nueva contraseña:</td>
            <td class="auto-style9">
        <asp:TextBox ID="txtPassNueva" runat="server" TextMode="Password" ValidationGroup="grupo1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirmar nueva contraseña:</td>
            <td>
        <asp:TextBox ID="txtPassNueva2" runat="server" TextMode="Password" ValidationGroup="grupo1"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassNueva" ControlToValidate="txtPassNueva2" ErrorMessage="Las nuevas contraseñas deben coincidir."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Button ID="btnModifUC0" runat="server" Text="Confirmar cambio contraseña" OnClick="btnModifUC0_Click" ValidationGroup="grupo1" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsj2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
        <asp:Button ID="btnVolverPP" runat="server" Text="Volver a Pagina Principal" CausesValidation="False" OnClick="btnVolverPP_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <br />
</asp:Content>
