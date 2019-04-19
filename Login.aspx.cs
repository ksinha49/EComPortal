using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    static int c = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    log:
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"data source=.\sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from login where userid='" + TextBox1.Text + "'";
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {


                while (dr.Read())
                {
                    if (TextBox2.Text == dr["password"].ToString())
                    {
                        Session["username"] = dr["name"];
                        Session["userid"] = dr["userid"];
                        Session["address"]=dr["address"];
                        if (dr["userid"].ToString() == "admin@gmail.com")
                        {
                            Response.Redirect("Adminpanel.aspx");
                        }
                        else
                        {
                            Response.Redirect("Usercart.aspx?username" + Session["username"]); 
                        }
                    }
                    else
                    {
                        c++;
                        Label3.Text = "Wrong password or username.Try again ";

                        if (c > 4)
                        {
                            Panel1.Visible = true;

                            if (TextBox3.Text == Session["randomstr"].ToString())
                            {
                                c = 0;
                                goto log;
                            }
                            else
                            {
                                Label4.Text = "Words Don't Match";
                            }
                        }
                    }
                }
            }
            else
            {

                c++;
                Label3.Text = "Wrong password or username.Try again ";
                if (c > 4)
                {
                    Panel1.Visible = true;
                    Label3.Text = "Wrong password or username.Try again ";
                    if (TextBox3.Text == Session["randomstr"].ToString())
                    {
                        c = 0;
                        goto log;
                    }
                    else
                    {
                        Label4.Text = "Words Don't Match";
                    }
                }
            }
            con.Close();
        }
    }
}
