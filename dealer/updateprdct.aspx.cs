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


public partial class dealer_updateprdct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int d_id = Convert.ToInt32(Request.QueryString["id"]);        
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_prduct", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 4);
        cmd1.Parameters.Add("@p_id", d_id);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd1);
        dtadt.Fill(dt);
        pname.Text=dt.Rows[0][1].ToString();
        Image2.ImageUrl = dt.Rows[0][6].ToString();
        //category.SelectedValue=dt.Rows[0]][2].ToString();
        price.Text = dt.Rows[0][4].ToString();
        avail.Text = dt.Rows[0][5].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int d_id = Convert.ToInt32(Request.QueryString["id"]);
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_prduct", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 6);
        cmd1.Parameters.Add("@name", pname.Text.ToString());
        cmd1.Parameters.Add("@category", category.SelectedItem.ToString());
        cmd1.Parameters.Add("@age", age.SelectedItem.ToString());
        cmd1.Parameters.Add("@avail", Convert.ToInt32(avail.Text));
        cmd1.Parameters.Add("@price", Convert.ToInt32(price.Text));
        cmd1.Parameters.Add("@d_id", d_id);
        //cmd1.Parameters.Add("@image", "~/images/products/" + image.FileName);
        cmd1.ExecuteNonQuery();
        //String filename = Path.Combine(Server.MapPath("~/images/products/"), image.FileName);
        //image.SaveAs(filename);
        Response.Write("<script>Product Edited</script>");
        Response.Redirect("products.aspx");
    

    }
}