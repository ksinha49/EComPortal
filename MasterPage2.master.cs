using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            ImageButton1.Visible = true;
        }
        Label3.Text = "[" + Session["place"] + "]";
        Label4.Text = "" + Session["userid"] + "";


    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["userid"] = null;
        Session["username"] = null;
        Session["address"] = null;
        Response.Redirect("thanx4.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserCart.aspx");
    }
}
