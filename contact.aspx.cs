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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into contact values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Thanks3.aspx");
    }
}