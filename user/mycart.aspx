<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="mycart.aspx.cs" Inherits="user_mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 931px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" width="100%" align="center"><tr><td class="auto-style1"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" Width="80%" align="center" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" BorderStyle="None" BorderWidth="0px" ForeColor="#284775" HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
                <ControlStyle Height="100px" Width="100px" BorderStyle="None"/>
            </asp:TemplateField>
            <asp:BoundField DataField="p_name" SortExpression="p_name">
            <ControlStyle BorderStyle="None" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" >
            <ControlStyle BorderStyle="None" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price">
            <ControlStyle BorderStyle="None" />
            </asp:BoundField>
            <asp:BoundField DataField="purchase_id" HeaderText="id" Visible="False" />
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
    </asp:GridView></td>
    <td width="30" style="align-items:left">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToyStoreConnectionString %>" SelectCommand="select  purchase_tb.purchase_id,p_name,image,quantity,purchase_tb.price from purchase_tb,product_tb where product_tb.p_id=purchase_tb.product_id and purchase_tb.status='oncart'" DeleteCommand="delete from purchase_tb where purchase_id=@id">
        <DeleteParameters>
            <asp:Parameter Name="id" type="Int32"/>
        </DeleteParameters>
    </asp:SqlDataSource>
  <asp:Button ID="Button3" runat="server"  Text="Check Out Now" OnClick="Button3_Click"  BackColor="#3399FF" BorderStyle="Dashed" style="" />
         </td></tr></table>
<br><br>
</asp:Content>

