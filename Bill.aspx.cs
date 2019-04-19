using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["username"].ToString();
        Label4.Text = Session["userid"].ToString();
        Label5.Text = Session["address"].ToString();
        if (Profile.SCart == null)
        {
            Profile.SCart = new ShoppingCart.Cart();
        }
        if (!Page.IsPostBack)
        {
            ReBindGrid();
        }
        if (Profile.SCart.Items == null)
        {
            TotalLabel.Visible = false;
        }
    }
    private void ReBindGrid()
    {
        grdCart1.DataSource = Profile.SCart.Items;
        DataBind();
        Label6.Text =string.Format("{0}",Profile.SCart.Items);
        TotalLabel.Text = string.Format("{0,19:Rs.}",
                                     Profile.SCart.Total);
    }
    protected void grdCart1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into saleacc values('"+Label4.Text+"','"+Label3.Text+"','"+Label6.Text+"','"+TotalLabel.Text+"')";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["bill"] = TotalLabel.Text;
        Response.Redirect("Payment.aspx");
    }
    
}