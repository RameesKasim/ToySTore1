<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="mydetails.aspx.cs" Inherits="user_mydetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    


<table align="center" cellpadding="14" cellspacing="10" class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4">
                <h3>Personal Details</h3>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink9" NavigateUrl="~/user/editdetails.aspx"  runat="server" >Edit Details</asp:HyperLink>
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
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="username" runat="server" Text="loc"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width:250px">
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
            <td class="auto-style2" colspan="4">
                <h3>Delivery Address</h3> 
            </td>
        </tr>
        <tr>
            <td class="text-left auto-style3"></td>
            <td class="text-left">
            </td>
            <td>&nbsp;</td>
            <td><asp:HyperLink ID="HyperLink1" NavigateUrl="~/user/address.aspx"  runat="server" >Edit Address</asp:HyperLink></td>            
        </tr>
        
        <tr>
            <td class="text-left auto-style3">
                <asp:Label ID="Label5" runat="server" Text="House Name"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="hname" runat="server" Text=""></asp:Label>
            </td>
            <td class="text-left" style="width:150px">
                <asp:Label ID="Label6" runat="server" Text="Place"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="place" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label7" runat="server" Text="Street"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="street" runat="server" Text=""></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="pin" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="text-left auto-style3"></td>
            <td class="text-left">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style2" colspan="4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="text-left auto-style3"></td>
            <td class="text-left">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
    </table>
    </asp:Content>