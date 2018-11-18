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


public partial class admin_ulist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int c = 0;
        Panel1.Controls.Add(new LiteralControl("<table style=width:100%>"));

        Panel1.Controls.Add(new LiteralControl("<tr>"));
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_reg", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 3);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd1);
        dtadt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {

            if (c < 6)
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
            img.Src = dt.Rows[i][6].ToString();
            Panel1.Controls.Add(new LiteralControl("<td><table runat=server>"));
            Panel1.Controls.Add(new LiteralControl("<tr><td>"));
            Panel1.Controls.Add(new LiteralControl("<a href=userview.aspx?uname1=" + dt.Rows[i][3].ToString() + ">"));
            Panel1.Controls.Add(img);
            Panel1.Controls.Add(new LiteralControl("</a>"));
            Panel1.Controls.Add(new LiteralControl("</td></tr>"));
            Panel1.Controls.Add(new LiteralControl("<tr><td align='center'>" + dt.Rows[i][1].ToString() + " " + dt.Rows[i][2].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td></tr>"));
            Panel1.Controls.Add(new LiteralControl("</table>"));
            Panel1.Controls.Add(new LiteralControl("</td>"));

        }
        Panel1.Controls.Add(new LiteralControl("</tr>"));
        Panel1.Controls.Add(new LiteralControl("</table>"));

    }
}