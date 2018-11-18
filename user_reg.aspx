<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
       <div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits" style="width:60%">
					<div class="form-w3agile">
						<h3>User Registration</h3>
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
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fname" ErrorMessage="Enter valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                               <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator8" runat="server" ErrorMessage="* required" ControlToValidate="fname"></asp:RequiredFieldValidator>
                            </asp:TableCell>                           
                            <asp:TableCell> 
                                <div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
								<asp:TextBox ID="lname" runat="server" placeholder="last name" Width="200"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Enter valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="* required" ControlToValidate="lname"></asp:RequiredFieldValidator>
							</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                            <asp:TableCell>
                                <div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							    <asp:TextBox ID="email" runat="server"  Width="200px" placeholder="email address"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="email" ErrorMessage="Enter valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="* required" ControlToValidate="email"></asp:RequiredFieldValidator>
							</asp:TableCell>
                           <asp:TableCell>
                               <div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<asp:TextBox ID="email2" runat="server"  Width="200px" placeholder=" confirm email address"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
                               <asp:CompareValidator ForeColor="red" ID="CompareValidator1" runat="server" ErrorMessage="* email doesn't match" ControlToCompare="email" ControlToValidate="email2"></asp:CompareValidator>							</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
							<asp:TableCell>
                                <div class="key">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<asp:TextBox ID="phne" runat="server" Height="25px" Width="233px" placeholder="contact number"></asp:TextBox>
                                <div class="clearfix"></div>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ErrorMessage="Enter correct phone number" ControlToValidate="phne" ValidationExpression="^[6-9]+[0-9]{9}$"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="* required" ControlToValidate="phne"></asp:RequiredFieldValidator>
							</asp:TableCell>
                            <asp:TableCell>
                                <div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
								<asp:TextBox ID="uname" runat="server" Height="25px" Width="233px" placeholder="user name"></asp:TextBox>
                                <div class="clearfix"></div>
                                </div>
                                <asp:RequiredFieldValidator ForeColor="Red"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="* required" ControlToValidate="uname"></asp:RequiredFieldValidator>
							</asp:TableCell>
                            </asp:TableRow>
							<asp:TableRow>
                            <asp:TableCell>
                                <br>
                                <div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
						        <asp:TextBox ID="paswd" runat="server"  Width="200px" placeholder="password" TextMode="Password"></asp:TextBox>
                                <div class="clearfix"></div>
                                </div>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="* required" ControlToValidate="paswd"></asp:RequiredFieldValidator>
							</asp:TableCell>
                            <asp:TableCell>
                                <div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
								<asp:TextBox ID="cnpaswd" runat="server"  Width="200px" placeholder="confirm password" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator runat="server" ErrorMessage="Password Doesn,t match" ControlToCompare="paswd" ControlToValidate="cnpaswd"></asp:CompareValidator><div class="clearfix"></div>
                                </div>							
                            </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                            <asp:TableCell>    
                                <br><div class="key">
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
                                <asp:Button ID="submit" runat="server" Text="REGISTER"  Width="100px" OnClick="submit_Click"/>
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

