<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="dealerinfo.aspx.cs" Inherits="dealer_dealerinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            color: #0000FF;
            font-size: medium;
        }
        .auto-style3 {}
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="14" cellspacing="10" class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4">
                <h3>Dealer Details</h3>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <a href="updateprdct.aspx"  runat="server">Edit Details</a>
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
                <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
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
    </table>

</asp:Content>

