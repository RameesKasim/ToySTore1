<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="myorders.aspx.cs" Inherits="user_myorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" Width="80%" align="center" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" BorderStyle="None" BorderWidth="0px" ForeColor="#284775" HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
            <asp:BoundField DataField="date" SortExpression="date" ApplyFormatInEditMode="True" DataFormatString="{0:dd-MM-yyyy}" HeaderText="Date" HtmlEncodeFormatString="False">
            </asp:BoundField>
            <asp:TemplateField SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
                <ControlStyle Height="80px" Width="80px" />
            </asp:TemplateField>
            <asp:BoundField DataField="p_name" HeaderText="Product" SortExpression="p_name" >
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Dealer" SortExpression="name" />
            <asp:BoundField DataField="Expr1" HeaderText="Price" SortExpression="Expr1">
            </asp:BoundField>
            <asp:BoundField HeaderText="Quantity" DataField="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="price" HeaderText="Total Amount" SortExpression="price" />
        </Columns>
        <EditRowStyle BackColor="#999999" BorderStyle="None" BorderWidth="0px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <EmptyDataRowStyle BorderWidth="0px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#5D7B9D" BorderStyle="None" BorderWidth="0px" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="None" BorderWidth="0px" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" BorderStyle="None" BorderWidth="0px" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <RowStyle BackColor="#F7F6F3" BorderStyle="None" BorderWidth="0px" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#E2DED6" BorderStyle="None" BorderWidth="0px" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" BorderStyle="None" BorderWidth="0px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" BorderStyle="None" BorderWidth="0px" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToyStoreConnectionString %>" SelectCommand="SELECT p.quantity, p.date, pd.image,p.price, pd.p_name, pd.price AS Expr1, d.name FROM purchase_tb AS p INNER JOIN product_tb AS pd ON p.product_id = pd.p_id INNER JOIN dealer_tb AS d ON d.dealer_id = pd.dealer_id and p.status='ordered'">
    </asp:SqlDataSource>

</asp:Content>

