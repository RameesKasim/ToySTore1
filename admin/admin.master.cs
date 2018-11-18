using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] != "admin")
              Response.Redirect("~/index.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["type"] = " ";
        Session["uname"] = " ";
        Response.Redirect("~/index.aspx");

    }
}
