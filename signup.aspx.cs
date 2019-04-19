using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox2.Text == Session["randomstr"].ToString())
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into login values('" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','"+TextBox6.Text+"','"+TextBox7.Text+"')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Thanks.aspx");

        }
        else
        {
            Label6.Text = "Characters Don't Match.Try Again";
        }
    }
}