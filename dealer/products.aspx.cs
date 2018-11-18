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
public partial class dealer_products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname1 = Session["uname"].ToString();
        int c = 0;
        Panel1.Controls.Add(new LiteralControl("<table style=width:90%> "));
        Panel1.Controls.Add(new LiteralControl("<tr>"));
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_dealerreg", obj.con);
        SqlCommand cmd1 = new SqlCommand("sp_prduct", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 2);
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@name", uname1);
        DataTable dt1 = new DataTable();
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        cmd1.Parameters.Add("@d_id", a);
        SqlDataAdapter dtadt1 = new SqlDataAdapter(cmd1);
        dtadt1.Fill(dt1);
        for (int i = 0; i < dt1.Rows.Count; i++)
        {

            if (c < 5)
            {
                c++;
            }

            else
            {
                Panel1.Controls.Add(new LiteralControl("</td></tr>"));
                Panel1.Controls.Add(new LiteralControl("<tr>"));
                c = 0;
            }
            HtmlImage img = new HtmlImage();
            img.Attributes.Add("class", "");
            img.Style.Add(HtmlTextWriterStyle.Display, "block");
            img.Style.Add(HtmlTextWriterStyle.Height, "150px");
            img.Style.Add(HtmlTextWriterStyle.Width, "200px");
            img.Src = dt1.Rows[i][6].ToString();
            Panel1.Controls.Add(new LiteralControl("<td><table runat=server>"));
            Panel1.Controls.Add(new LiteralControl("<tr><td>"));
            Panel1.Controls.Add(new LiteralControl("<a href=view.aspx?id=" + dt1.Rows[i][0].ToString() + ">"));
            Panel1.Controls.Add(img);
            Panel1.Controls.Add(new LiteralControl("</a>"));
            Panel1.Controls.Add(new LiteralControl("</td></tr>"));
            Panel1.Controls.Add(new LiteralControl("<tr><td align='center'>" + dt1.Rows[i][1].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td></tr>"));
            Panel1.Controls.Add(new LiteralControl("</table>"));
            Panel1.Controls.Add(new LiteralControl("</td>"));

        }
        Panel1.Controls.Add(new LiteralControl("</tr>"));
        Panel1.Controls.Add(new LiteralControl("</table>"));

    }
}