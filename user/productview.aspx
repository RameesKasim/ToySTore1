<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="productview.aspx.cs" Inherits="user_productview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
<table align="center" cellpadding="13" cellspacing="25" class="auto-style1">      
        <tr>
            <td class="text-center" colspan="2">
                <h3><asp:Label ID="name" runat="server" Text="Label"></asp:Label></h3>
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
            <td class="text-left">
                <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="text-left">
            <asp:DropDownList id="quantity"  runat="server" Width="80" OnTextChanged="quantity_TextChanged" AutoPostBack="true" AppendDataBoundItems="false"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label6" runat="server" Text="Amount"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="Label7" runat="server"></asp:Label>            
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center auto-style3"><asp:Button ID="Button1" class="form-w3agile" runat="server"  Text="Add to cart" OnClick="Button1_Click" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr><td>&nbsp</td></tr>
       </table>
</asp:Content>

