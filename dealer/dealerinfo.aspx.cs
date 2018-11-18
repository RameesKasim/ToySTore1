using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class dealer_dealerinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String dname = Session["uname"].ToString();
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_dealerreg", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 4);
        cmd2.Parameters.Add("@name", dname);
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
        int a = Convert.ToInt16(dt.Rows[0][0]);
        name.Text = dt.Rows[0][1].ToString();
        loc.Text = dt.Rows[0][2].ToString();
        email.Text = dt.Rows[0][3].ToString();
        phn.Text = dt.Rows[0][4].ToString();
        Image2.ImageUrl = dt.Rows[0][5].ToString();

    }
}