using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class dealer_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_dealerreg", obj.con);
        SqlCommand cmd2 = new SqlCommand("sp_dealerreg", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@name", dname.Text);
        cmd2.Parameters.Add("@flag", 0);
        cmd2.Parameters.Add("@email", email.Text);
        cmd2.Parameters.Add("@phoneno", phne.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        if (dt.Rows.Count > 0)
            Response.Write("<script>alert('Dealer Already Exist')</script>");
        else
        {

            cmd1.Parameters.Add("@flag", 1);
            cmd1.Parameters.Add("@name", dname.Text);
            cmd1.Parameters.Add("@loc", loc.Text);
            cmd1.Parameters.Add("@email", email.Text);
            cmd1.Parameters.Add("@phoneno", phne.Text);
            cmd1.Parameters.Add("@password ", paswd.Text);
            cmd1.Parameters.Add("@type", "dealer");
            cmd1.Parameters.Add("@image", "~/images/dealers/" + image.FileName);
            cmd1.ExecuteNonQuery();
            String filename = Path.Combine(Server.MapPath("~/images/dealers/"), image.FileName);
            image.SaveAs(filename);
            Response.Write("<script>Dealer Registered</script>");
            Response.Redirect("Login.aspx");
        }

    }
    protected void reset_Click(object sender, EventArgs e)
    {
        dname.Text = "";
        loc.Text = "";
        email.Text = "";
        email2.Text = "";
        paswd.Text = "";
        phne.Text = "";
        cnpaswd.Text = "";
        
    }
}