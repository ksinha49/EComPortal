using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
       
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       double Price1 = double.Parse(((Label)DataList1.Controls[0].FindControl("PriceLabel")).Text);
       string ProductName = ((Label)DataList1.Controls[0].FindControl("NameLabel")).Text;
       string ProductImageUrl = ((Label)DataList1.Controls[0].FindControl("ImageUrlLabel")).Text;
       int ProductID = int.Parse(Request.QueryString["ProductID"]);
       if (Profile.SCart == null)
       {
         Profile.SCart = new ShoppingCart.Cart();
       }
       Profile.SCart.Insert(ProductID, Price1, 1, ProductName, ProductImageUrl);
       Server.Transfer("Laptop2.aspx");
}
    
}
