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

public partial class user_addressaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname = Session["uname"].ToString();
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_reg", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@username", uname);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        SqlCommand cmd = new SqlCommand("sp_address", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@u_id", a);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt1);
        if(dt1.Rows.Count>0)
        {
            hname.Text = dt1.Rows[0][2].ToString();
            place.Text = dt1.Rows[0][3].ToString();
            street.Text = dt1.Rows[0][4].ToString();
            pin.Text = dt1.Rows[0][5].ToString();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        String uname = Session["uname"].ToString();
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_reg", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@username", uname);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        SqlCommand cmd = new SqlCommand("sp_address", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        cmd.Parameters.Add("@u_id", a);
        cmd.Parameters.Add("@h_name", hname.Text);
        cmd.Parameters.Add("@loc", place.Text);
        cmd.Parameters.Add("@street", street.Text);
        cmd.Parameters.Add("@pin", Convert.ToInt32(pin.Text));
        cmd.ExecuteNonQuery();
        Response.Redirect("mydetails.aspx");
        
    }
}