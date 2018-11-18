using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Windows.Markup;
using System.Net;
using System.Web.UI.HtmlControls;



public partial class dealer_dealer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] != "dealer")
            Response.Redirect("~/index.aspx");  
         String dname=Session["uname"].ToString(); 
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_dealerreg", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@name", dname);
        cmd1.Parameters.Add("@flag", 4);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd1);
        dtadt.Fill(dt);
        Image1.ImageUrl =dt.Rows[0][5].ToString();
        String a=dt.Rows[0][0].ToString();
        linkorder.NavigateUrl = "order.aspx?id="+a;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["type"]=" ";
        Session["uname"] = " ";
        Response.Redirect("~/index.aspx");

    }
}
