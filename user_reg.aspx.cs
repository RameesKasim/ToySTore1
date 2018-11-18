using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class user_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(image.HasFile)
        {
            Image1.ImageUrl = image.FileName.ToString();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_reg", obj.con);
        SqlCommand cmd2 = new SqlCommand("sp_reg", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@username",uname.Text);
        cmd2.Parameters.Add("@flag", 0);
        cmd2.Parameters.Add("@email", email.Text);
        cmd2.Parameters.Add("@phoneno", phne.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        if (dt.Rows.Count > 0)
            Response.Write("<script>alert('User Already Exist')</script>");
        else
        {       
            cmd1.Parameters.Add("@flag", 1);
            cmd1.Parameters.Add("@fname", fname.Text);
            cmd1.Parameters.Add("@lname", lname.Text);
            cmd1.Parameters.Add("@email", email.Text);
            cmd1.Parameters.Add("@phoneno", phne.Text);
            cmd1.Parameters.Add("@username", uname.Text);
            cmd1.Parameters.Add("@password ", paswd.Text);
            cmd1.Parameters.Add("@type", "user");
            cmd1.Parameters.Add("@image", "~/images/user_images/" + image.FileName); 
            cmd1.ExecuteNonQuery();
            String filename = Path.Combine(Server.MapPath("~/images/user_images/"), image.FileName);
            image.SaveAs(filename);  
            Response.Write("<script>User Registered</script>");
            Response.Redirect("Login.aspx");
        }

    }
}