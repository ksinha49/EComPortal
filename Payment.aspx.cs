using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text ="" + Session["username"];
        Label2.Text ="" + Session["bill"];
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Paypal")
        {
            MultiView1.ActiveViewIndex = 0;
            Label5.Text = TextBox1.Text;
        }
        else if (DropDownList1.SelectedItem.Text == "Credit Card")
        {
            MultiView1.ActiveViewIndex = 1;
            Label5.Text = TextBox2.Text;
        }
        else  if (DropDownList1.SelectedItem.Text == "Debit Card")
        {
            MultiView1.ActiveViewIndex = 2;
            Label5.Text = TextBox4.Text;
        }
        else if (DropDownList1.SelectedItem.Text == "COD")
        {
            MultiView1.ActiveViewIndex = 3;
            Label5.Text = "";
        }
        else if (DropDownList1.SelectedItem.Text == "Money Order/Cheque")
        {
            MultiView1.ActiveViewIndex = 4;
            Label5.Text = TextBox6.Text;
        }
        else if (DropDownList1.SelectedItem.Text == "Select")
        {
            MultiView1.ActiveViewIndex = 5;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into payment_det  values('" + Session["userid"].ToString() + "','" + DropDownList1.SelectedItem.Text + "','" + Label5.Text + "','" + Label2.Text + "')";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Thanks1.aspx");
    }
}