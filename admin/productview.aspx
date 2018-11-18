<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="productview.aspx.cs" Inherits="admin_productview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table align="center" cellpadding="13" cellspacing="25" class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4">
                <h3>Product Details</h3>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3" rowspan="7">
                <asp:Image ID="Image2" runat="server" width="200" Height="200"/>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label2" runat="server" Text="Dealer"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="dealer" runat="server" Text="loc"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="cat" runat="server" Text="email"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width:250px">
                <asp:Label ID="Label4" runat="server" Text="Availablity"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="avail" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="text-left">
                <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="price" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="text-left"></td>
            <td class="text-left">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="text-left auto-style3"></td>
            <td class="text-left">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       </table>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>

</asp:Content>

