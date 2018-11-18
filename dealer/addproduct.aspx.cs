using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class dealer_addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String dname = Session["uname"].ToString();
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_prduct", obj.con);
        SqlCommand cmd2 = new SqlCommand("sp_dealerreg", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@name", dname);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@name", pname.Text);
        cmd1.Parameters.Add("@category", category.SelectedItem.ToString());
        cmd1.Parameters.Add("@age", age.SelectedItem.ToString());
        cmd1.Parameters.Add("@avail", avail.Text);
        cmd1.Parameters.Add("@price", price.Text);
        cmd1.Parameters.Add("@d_id", a);
        cmd1.Parameters.Add("@image", "~/images/products/" + image.FileName);
        cmd1.ExecuteNonQuery();
        String filename = Path.Combine(Server.MapPath("~/images/products/"), image.FileName);
        image.SaveAs(filename);
        Response.Write("<script>Product Added</script>");
        Response.Redirect("products.aspx");
    
    }
}