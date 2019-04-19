using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Adminpanel3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";
        con.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select * from productbooks", con);
        SqlDataAdapter ad2 = new SqlDataAdapter("select * from productbooks1", con);
        SqlDataAdapter ad3 = new SqlDataAdapter("select * from productlap", con);
        SqlDataAdapter ad4 = new SqlDataAdapter("select * from productcam", con);
        SqlDataAdapter ad5 = new SqlDataAdapter("select * from productmobile", con);
        SqlDataAdapter ad6 = new SqlDataAdapter("select * from productfashion", con);
        SqlDataAdapter ad7 = new SqlDataAdapter("select * from productfashion1", con);
        SqlDataAdapter ad8 = new SqlDataAdapter("select * from productfashion3", con);
        DataSet dt1 = new DataSet();
        DataSet dt2 = new DataSet();
        DataSet dt3 = new DataSet();
        DataSet dt4 = new DataSet();
        DataSet dt5 = new DataSet();
        DataSet dt6 = new DataSet();
        DataSet dt7 = new DataSet();
        DataSet dt8 = new DataSet();
        ad1.Fill(dt1);
        ad2.Fill(dt2);
        ad3.Fill(dt3);
        ad4.Fill(dt4);
        ad5.Fill(dt5);
        ad6.Fill(dt6);
        ad7.Fill(dt7);
        ad8.Fill(dt8);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        GridView2.DataSource = dt2;
        GridView2.DataBind(); 
        GridView3.DataSource = dt3;
        GridView3.DataBind();
        GridView4.DataSource = dt4;
        GridView4.DataBind(); 
        GridView5.DataSource = dt5;
        GridView5.DataBind(); 
        GridView6.DataSource = dt6;
        GridView6.DataBind(); 
        GridView7.DataSource = dt7;
        GridView7.DataBind();
        GridView8.DataSource = dt8;
        GridView8.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Books_nw arrivals")
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (DropDownList1.SelectedItem.Text == "Books_popular")
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else if (DropDownList1.SelectedItem.Text == "Laptops")
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else if (DropDownList1.SelectedItem.Text == "Cameras")
        {
            MultiView1.ActiveViewIndex = 3;
        }
        else if (DropDownList1.SelectedItem.Text == "Mobiles")
        {
            MultiView1.ActiveViewIndex = 4;
        }
        else if (DropDownList1.SelectedItem.Text == "Fashion_Men")
        {
            MultiView1.ActiveViewIndex = 5;
        }
        else if (DropDownList1.SelectedItem.Text == "Fashion_Women")
        {
            MultiView1.ActiveViewIndex = 6;
        }
        else if (DropDownList1.SelectedItem.Text == "Fashion_kids")
        {
            MultiView1.ActiveViewIndex = 7;
        }
    }
}