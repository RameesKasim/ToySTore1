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

public partial class dealer_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int p_id = Convert.ToInt32(Request.QueryString["id"]);
        
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_prduct", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@p_id", p_id);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        //int a = Convert.ToInt16(dt.Rows[0][0]);
        name.Text = dt.Rows[0][1].ToString();
        cat.Text = dt.Rows[0][2].ToString();
        age.Text = dt.Rows[0][3].ToString();
        avail.Text = dt.Rows[0][5].ToString();
        Image2.ImageUrl = dt.Rows[0][6].ToString();
        price.Text = "₹ "+dt.Rows[0][4].ToString();
        update.NavigateUrl="updateprdct.aspx?id="+p_id;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int p_id = Convert.ToInt32(Request.QueryString["id"]);
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_prduct", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 5);
        cmd2.Parameters.Add("@p_id", p_id);
        cmd2.ExecuteNonQuery();
        Response.Redirect("home.aspx");
    }
}