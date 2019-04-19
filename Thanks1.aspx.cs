using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thanks1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Text= Session["userid"].ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["userid"] = null;
        Session["username"] = null;
        Session["address"] = null;
        Response.Redirect("Home.aspx");
    }
}