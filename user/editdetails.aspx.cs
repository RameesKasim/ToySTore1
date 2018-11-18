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
using System.IO;

public partial class user_editdetails : System.Web.UI.Page
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
        fname.Text = dt.Rows[0][1].ToString();
        lname.Text= dt.Rows[0][2].ToString();
        email.Text = dt.Rows[0][5].ToString();
        phne.Text = dt.Rows[0][4].ToString();
        Image1.ImageUrl = dt.Rows[0][6].ToString();
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
        cmd2.Parameters.Add("@fname", fname.Text);
        cmd2.Parameters.Add("@lname", lname.Text);
        cmd2.Parameters.Add("@email", email.Text);
        cmd2.Parameters.Add("@phoneno", phne.Text);
        //cmd2.Parameters.Add("@image", "~/images/user_images/" + image.FileName);
        cmd2.ExecuteNonQuery();
        //String filename = Path.Combine(Server.MapPath("~/images/user_images/"), image.FileName);
        //image.SaveAs(filename);  
        Response.Write("<script>Details updated</script>");
        Response.Redirect("home.aspx");
        }
    }
