<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="dealerview.aspx.cs" Inherits="admin_dealerview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table align="center" cellpadding="13" cellspacing="25" class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4">
                <h3>Dealer Details</h3>
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
            <td class="auto-style3" rowspan="3">
                <asp:Image ID="Image2" runat="server" width="200" Height="200"/>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label2" runat="server" Text="location"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="loc" runat="server" Text="loc"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="email" runat="server" Text="email"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="phn" runat="server"></asp:Label>
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

