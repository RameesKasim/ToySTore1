<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="user_addressaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits" style="width:60%">
					<div class="form-w3agile">
						<h3>Delivery Adresss</h3>
							<asp:Table ID="Table1" runat="server" BorderStyle="None" HorizontalAlign="Center" CellSpacing="250">
                            <asp:TableRow>
							<asp:TableCell></asp:TableCell>
                            <asp:TableCell>
							</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                            <asp:TableCell>
                                <div class="key" >
								<i class="fa fa-home" aria-hidden="true"></i>
							<asp:TextBox ID="hname" runat="server"  placeholder="house name" Width="200"></asp:TextBox>
								<div class="clearfix"></div>
							    </div>
                            </asp:TableCell>                           
                            <asp:TableCell> 
                                <div class="key">
								<i class="fa fa-map" aria-hidden="true"></i>
								<asp:TextBox ID="place" runat="server" placeholder="place" Width="200"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
							</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                            <asp:TableCell>
                                <div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							    <asp:TextBox ID="street" runat="server"  Width="200px" placeholder="street"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
							</asp:TableCell>
                           <asp:TableCell>
                    		    <div class="key">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<asp:TextBox ID="pin" runat="server" Height="25px" Width="233px" placeholder="pincode"></asp:TextBox>
								<div class="clearfix"></div>
                                </div>
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

