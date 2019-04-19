using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName.Split('.')[1];
            if (str == "jpg" || str == "png")
            {
                FileUpload1.SaveAs(Server.MapPath("~\\images\\") + FileUpload1.FileName);
            }
            else
            {
                Label1.Text = "wrong Extention";

            }

        }
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data source=.\ sqlexpress; attachdbfilename=|datadirectory|\Database.mdf;user instance=true; integrated security= true";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        if (DropDownList1.SelectedItem.Text == "Books_nw arrivals")
            cmd.CommandText = "insert into productbooks values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Books_popular")
            cmd.CommandText = "insert into productbooks1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Laptops")
            cmd.CommandText = "insert into productlap values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Cameras")
            cmd.CommandText = "insert into productcam values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Mobiles")
            cmd.CommandText = "insert into productmobile values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Fashion_Men")
            cmd.CommandText = "insert into productfashion values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Fashion_Women")
            cmd.CommandText = "insert into productfashion1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        else if (DropDownList1.SelectedItem.Text == "Fashion_kids")
            cmd.CommandText = "insert into productfashion3 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "')";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Adminpanel.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}