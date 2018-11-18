<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="editdetails.aspx.cs" Inherits="user_editdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits" style="width:60%">
					<div class="form-w3agile">
						<h3>Update details</h3>
							<asp:Table ID="Table1" runat="server" BorderStyle="None" HorizontalAlign="Center" CellSpacing="250">
                            <asp:TableRow>
							<asp:TableCell></asp:TableCell>
                            <asp:TableCell>
                                <asp:Image ID="Image1" runat="server" Height="80px" Width="80px" />
							</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                            <asp:TableCell>
                                <div class="key" >
								<i class="fa fa-user" aria-hidden="true"></i>
							<asp:TextBox ID="fname" runat="server"  placeholder="first name" Width="200"></asp:TextBox>
								<div class="clearfix"></div>
							    </div>
                            </asp:TableCell>                           
                            <asp:TableCell> 
                                <div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
								<asp:TextBox ID="lname" runat="server" placeholder="last name" Width="200"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
							</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                            <asp:TableCell>
                                <div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							    <asp:TextBox ID="email" runat="server"  Width="200px" placeholder="email address"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
							</asp:TableCell>
                           <asp:TableCell>
                    		    <div class="key">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<asp:TextBox ID="phne" runat="server" Height="25px" Width="233px" placeholder="contact number"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
                           </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
							<asp:TableCell>
                            </asp:TableCell>
                            </asp:TableRow>
					        <asp:TableRow>
                            <asp:TableCell>    
                                <div class="key">
								<i class="fa fa-image" aria-hidden="true"></i>
								<asp:TextBox ID="TextBox1" runat="server"  Width="200px" placeholder="profile picture" ReadOnly="True"></asp:TextBox>								
                                <div class="clearfix"></div>
                                </div>
                            </asp:TableCell>
                            <asp:TableCell>    
                                <asp:FileUpload ID="image" runat="server" Width="250px" />
                            </asp:TableCell>
                            </asp:TableRow> 
                            <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center">    
                                <asp:Button ID="submit" runat="server" Text="Update"  Width="100px" OnClick="submit_Click"/>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button width="100px" ID="reset" runat="server" Text="RESET" />
                            </asp:TableCell>
                            </asp:TableRow> 
                            </asp:Table>
                    </div>
					
				</div>
			</div>
				<!--login-->
		</div>
</asp:Content>

