<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="PRESENTACION.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <p align="center">
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Filtrar" />
    </p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdProd" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="126px" ImageUrl='<%# Eval("ImagenURL") %>' Width="146px" OnClick="ImageButton1_Click" CommandArgument='<%# Eval("IdProd") %>' CommandName="Comprar" OnCommand="ImageButton1_Command"/>
                    <br />NombreProd:
                    <asp:Label ID="NombreProdLabel" runat="server" Text='<%# Eval("NombreProd") %>' />
                    <br />PrecioProd:
                    <asp:Label ID="PrecioProdLabel" runat="server" Text='<%# Eval("PrecioProd") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">IdProd:
                    <asp:Label ID="IdProdLabel1" runat="server" Text='<%# Eval("IdProd") %>' />
                    <br />NombreProd:
                    <asp:TextBox ID="NombreProdTextBox" runat="server" Text='<%# Bind("NombreProd") %>' />
                    <br />CategoriaProd:
                    <asp:TextBox ID="CategoriaProdTextBox" runat="server" Text='<%# Bind("CategoriaProd") %>' />
                    <br />PrecioProd:
                    <asp:TextBox ID="PrecioProdTextBox" runat="server" Text='<%# Bind("PrecioProd") %>' />
                    <br />
                    ImagenURL:
                    <asp:TextBox ID="ImagenURLTextBox" runat="server" Text='<%# Bind("ImagenURL") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    <br />
                    </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;" runat="server">
                    <tr>
                        <td>No se han devuelto datos.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">IdProd:
                    <asp:TextBox ID="IdProdTextBox" runat="server" Text='<%# Bind("IdProd") %>' />
                    <br />NombreProd:
                    <asp:TextBox ID="NombreProdTextBox" runat="server" Text='<%# Bind("NombreProd") %>' />
                    <br />CategoriaProd:
                    <asp:TextBox ID="CategoriaProdTextBox" runat="server" Text='<%# Bind("CategoriaProd") %>' />
                    <br />PrecioProd:
                    <asp:TextBox ID="PrecioProdTextBox" runat="server" Text='<%# Bind("PrecioProd") %>' />
                    <br />
                    ImagenURL:
                    <asp:TextBox ID="ImagenURLTextBox" runat="server" Text='<%# Bind("ImagenURL") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    <br />
                    </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="171px" ImageUrl='<%# Eval("ImagenURL") %>' Width="146px" OnClick="ImageButton1_Click" CommandArgument='<%# Eval("IdProd") %>' CommandName="Comprar" OnCommand="ImageButton1_Command" />
                    <br />
                    NombreProd:
                    <asp:Label ID="NombreProdLabel" runat="server" Text='<%# Eval("NombreProd") %>' />
                    <br />
                    PrecioProd:
                    <asp:Label ID="PrecioProdLabel" runat="server" Text='<%# Eval("PrecioProd") %>' />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">IdProd:
                    <asp:Label ID="IdProdLabel" runat="server" Text='<%# Eval("IdProd") %>' />
                    <br />NombreProd:
                    <asp:Label ID="NombreProdLabel" runat="server" Text='<%# Eval("NombreProd") %>' />
                    <br />CategoriaProd:
                    <asp:Label ID="CategoriaProdLabel" runat="server" Text='<%# Eval("CategoriaProd") %>' />
                    <br />PrecioProd:
                    <asp:Label ID="PrecioProdLabel" runat="server" Text='<%# Eval("PrecioProd") %>' />
                    <br />ImagenURL:
                    <asp:Label ID="ImagenURLLabel" runat="server" Text='<%# Eval("ImagenURL") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP4ConnectionString %>" SelectCommand="SELECT [IdProd], [NombreProd], [CategoriaProd], [PrecioProd], [ImagenURL] FROM [Productos]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>
