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

public partial class admin_detailview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String uname = Request.QueryString["uname1"].ToString();
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
        name.Text = dt.Rows[0][1].ToString() + " " + dt.Rows[0][2].ToString();
        username.Text = dt.Rows[0][3].ToString();
        email.Text = dt.Rows[0][5].ToString();
        phn.Text = dt.Rows[0][4].ToString();
        Image2.ImageUrl = dt.Rows[0][6].ToString();
        SqlCommand cmd1 = new SqlCommand("sp_address", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        int uid = Convert.ToInt16(dt.Rows[0][0]);
        cmd1.Parameters.Add("@u_id", uid);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
        }
        else
        {
        }
    }
}