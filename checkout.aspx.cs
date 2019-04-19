using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label3.Text = "Welcome" +" "+ Session["username"];
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("Bill.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}