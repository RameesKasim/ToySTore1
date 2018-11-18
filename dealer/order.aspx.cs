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
public partial class dealer_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname1 = Session["uname"].ToString();
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_dealerreg", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@name",uname1);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        SqlCommand cmd = new SqlCommand("d_order", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@d_id", Convert.ToInt32(dt.Rows[0][0]));
        DataTable dt1 = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt1);
        Panel1.Controls.Add(new LiteralControl("<table style=width:90% align=center> "));
        Panel1.Controls.Add(new LiteralControl("<tr>"));
        Panel1.Controls.Add(new LiteralControl("<th>Date</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Product</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Quantity</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Amount</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Name</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>House Name</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Place</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Street</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Pincode</td>"));
        Panel1.Controls.Add(new LiteralControl("<th>Phone Number</td>"));
        Panel1.Controls.Add(new LiteralControl("</tr>"));
        for (int i = 0; i < dt1.Rows.Count; i++)
        {
            Panel1.Controls.Add(new LiteralControl("<tr>"));
            Panel1.Controls.Add(new LiteralControl("<td>"+ dt1.Rows[i][1].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>"+ dt1.Rows[i][4].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>"+ dt1.Rows[i][0].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>" + dt1.Rows[i][3].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>" + dt1.Rows[i][5].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>" + dt1.Rows[i][7].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>"+ dt1.Rows[i][8].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>" + dt1.Rows[i][9].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>"+ dt1.Rows[i][10].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("<td>" + dt1.Rows[i][6].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            Panel1.Controls.Add(new LiteralControl("</tr>"));
        }

        Panel1.Controls.Add(new LiteralControl("</table>"));

    }
}