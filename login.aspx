<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits">
					<div class="form-w3agile">
						<h3>Login To Toy Store</h3>
							<div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
								<asp:TextBox ID="usename" runat="server" placeholder="username/company name"></asp:TextBox>
								<div class="clearfix"></div>
							</div>
                           <div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
								   <asp:DropDownList ID="DropDownList1" runat="server" width="293" height="40" style="border:thin">
                                   <asp:ListItem>SELECT TYPE</asp:ListItem>
                                   <asp:ListItem Value="admin">ADMIN</asp:ListItem>
                                   <asp:ListItem Value="user">CUSTOMER</asp:ListItem>
                                   <asp:ListItem Value="dealer">DEALER</asp:ListItem>
                                </asp:DropDownList>
								<div class="clearfix"></div>
							</div>
							<div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
								<asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="password">Password</asp:TextBox>
								<div class="clearfix"></div>
							</div>
							<asp:Button ID="loginbtn" runat="server" Text="Login"  OnClick="login_Click"/>
					</div>
					<div class="forg">
						<ul>
                        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/dealer_reg.aspx">Register as a Dealer</asp:HyperLink></li>
						<li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/user_reg.aspx">Register as a User</asp:HyperLink></li>
					    </ul>
                        <div class="clearfix"></div>
					</div>
				</div>
			</div>
			</div>
</asp:Content>

