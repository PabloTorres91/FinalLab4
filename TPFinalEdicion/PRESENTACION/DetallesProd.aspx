<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetallesProd.aspx.cs" Inherits="PRESENTACION.DetallesProd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="NombreProd" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
    </p>
    <p>
        <asp:Image ID="Image1" runat="server" style="float:left" Width="300px" />
&nbsp;&nbsp;&nbsp; Categoria:&nbsp;
        <asp:Label ID="lblCat" runat="server"></asp:Label>
    </p>
    <p>
&nbsp;&nbsp; &nbsp;Precio:&nbsp;
        <asp:Label ID="lblPrecio" runat="server"></asp:Label>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar a carrito" OnClick="btnAgregar_Click" />
        &nbsp;</p>
</asp:Content>
