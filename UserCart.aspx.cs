﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class UserCart : System.Web.UI.Page
{

     
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("checkout.aspx");
        
    }
}