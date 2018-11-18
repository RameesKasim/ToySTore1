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

public partial class user_productview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int d_id = Convert.ToInt32(Request.QueryString["id"]);
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_prduct", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 3);
        cmd2.Parameters.Add("@p_id", d_id);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        name.Text = dt.Rows[0][2].ToString();
        dealer.Text = dt.Rows[0][1].ToString();
        avail.Text = dt.Rows[0][6].ToString();
        cat.Text = dt.Rows[0][3].ToString();
        price.Text =dt.Rows[0][5].ToString();
        Label7.Text = dt.Rows[0][5].ToString();
        Image2.ImageUrl = dt.Rows[0][7].ToString();
        if(!IsPostBack)
        {
            for (int i = 1; i <= 4; i++)
            {
                if (i <= Convert.ToInt32(dt.Rows[0][6]))
                {

                    ListItem lt1 = new ListItem(i.ToString(), i.ToString());
                    quantity.Items.Add(lt1);
                }

            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String uname = Session["uname"].ToString();
        int d_id = Convert.ToInt32(Request.QueryString["id"]);
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_reg", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 4);
        cmd1.Parameters.Add("@username", uname);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd1);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        SqlCommand cmd2 = new SqlCommand("sp_purchase", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 2);
        cmd2.Parameters.Add("@u_id", a);
        cmd2.Parameters.Add("@p_id", d_id);
        cmd2.Parameters.Add("@quantity",quantity.SelectedValue);
        cmd2.Parameters.Add("@price",Label7.Text);
        cmd2.Parameters.Add("@date",DateTime.Now.Date);
        cmd2.ExecuteNonQuery();
        Response.Redirect("product.aspx");
    }
    protected void quantity_TextChanged(object sender, EventArgs e)
    {
        Label7.Text =(Convert.ToInt32(quantity.SelectedValue) *Convert.ToInt32( price.Text)).ToString();
    }
}
