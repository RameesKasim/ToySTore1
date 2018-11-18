<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="updateprdct.aspx.cs" Inherits="dealer_updateprdct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            color: #0099CC;
        }
        .newStyle1 {
            font-family: Courier;
        }
        .newStyle2 {
            font-family: fantasy;
        }
        .auto-style3 {
            width: 11px;
        }
        .newStyle3 {
            font-family: "Arial Black";
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table align="center" cellpadding="3" class="auto-style1">
        <tr>
            <td class="text-center" colspan="4" style="width: 258px;height:80px;">
                <h2 class="auto-style2"><strong class="newStyle1">UPDATE PRODUCT</strong></h2>
            </td>
        </tr>
        <tr>
            <tdstyle="width: 258px;height:80px;">&nbsp;</tdstyle="width:>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="37px" Width="37px" />
            </td>
        </tr>
        <tr class="newStyle3">
            <td style="width: 258px;height:80px;">
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="pname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="category" runat="server" Width="175px">
                    <asp:ListItem>Action Figure</asp:ListItem>
                    <asp:ListItem>Dolls</asp:ListItem>
                    <asp:ListItem>Soft Toys</asp:ListItem>
                    <asp:ListItem>Vehicles</asp:ListItem>
                    <asp:ListItem>Building Blocks</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="newStyle3">
            <td style="width: 258px;height:80px;">
                <asp:Label ID="Label2" runat="server" Text="Age Category"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="age" runat="server" Height="16px" Width="165px">
                    <asp:ListItem>0-1 Years</asp:ListItem>
                    <asp:ListItem>1-3 Years</asp:ListItem>
                    <asp:ListItem>3-5 Years</asp:ListItem>
                    <asp:ListItem>above 5 years</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="price" runat="server" Width="168px"></asp:TextBox>
            </td>
        </tr>
        <tr class="newStyle3">
            <td style="width: 258px;height:80px;">
                <asp:Label ID="Label3" runat="server" Text="Available"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="avail" runat="server"></asp:TextBox>
            </td>
            
        <tr class="newStyle3">
            <td>&nbsp;</td>
            <td class="auto-style3" style="width: 258px;height:80px;">
                <asp:Button ID="Button1" runat="server"  Text="Update" OnClick="Button1_Click" />
            </td>
            <td style="width: 258px;">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server"  Text="Reset" />
            </td>
        </tr>
        <tr>
            <td style="width: 258px;height:80px;">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
 
</asp:Content>

