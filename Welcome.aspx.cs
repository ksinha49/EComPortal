using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       if(DropDownList1.SelectedItem.Text == "Delhi")
       {
           Label1.Text = "Delhi";
           Session["place"]="Delhi";
       }
       else if (DropDownList1.SelectedItem.Text == "Mumbai")
       {
           Label1.Text ="Mumbai";
       
           Session["place"] = "Mumbai";
       }
       else if(DropDownList1.SelectedItem.Text == "Kolkata")
       {
           Label1.Text ="Kolkata";
           Session["place"] = "Kolkata";
       }
       else if (DropDownList1.SelectedItem.Text == "Chennai")
       {
           Label1.Text ="Chennai";
           Session["place"] = "Chennai";
       }
       else if (DropDownList1.SelectedItem.Text == "Chandigarh")
       {
           Label1.Text = "Chandigarh";
           Session["place"] = "Chandigarh";
       }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("Home.aspx?city=" +Label1.Text);
    }
}