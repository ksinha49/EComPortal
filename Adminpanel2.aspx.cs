using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Adminpanel2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select * from login", con);
        DataSet dt = new DataSet();
        ad.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}