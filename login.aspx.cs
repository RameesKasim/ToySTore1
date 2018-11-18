using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_reg", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 2);
        cmd1.Parameters.Add("@username", usename.Text);
        cmd1.Parameters.Add("@password", password.Text);
        cmd1.Parameters.Add("@type", DropDownList1.SelectedValue);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd1);
        dtadt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["uname"] = usename.Text;
            Session["type"] = DropDownList1.SelectedValue;
            if (DropDownList1.SelectedValue == "admin")
                Response.Redirect("admin/home.aspx");

            else if (DropDownList1.SelectedValue == "user")
                Response.Redirect("user/home.aspx");
            else
                Response.Redirect("dealer/home.aspx");

        }
        else
        { 
            Response.Write("<script>alert('username or password incorrect')</script>");
        }
    }
}