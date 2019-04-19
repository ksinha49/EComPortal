<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
SelectCommand="SELECT [ProductID], [Name],[Price],[Description],[ImageUrl] FROM [productlap] 
               WHERE ([ProductID] = @ProductID)">
    <SelectParameters>
    <asp:QueryStringParameter Name="ProductID" 
                              QueryStringField="ProductID" 
                              Type="Decimal" />
    </SelectParameters>
</asp:SqlDataSource>
</div>

<asp:DataList ID="DataList1" runat="server" 
              DataSourceID="SqlDataSource1">
<ItemTemplate>
  <asp:Image ID="Image1" runat="server" 
       ImageUrl='<%# Eval("ImageUrl","~/images/{0}") %>'/>
  <asp:Label ID="ImageUrlLabel" runat="server" 
             Text='<%# Eval("ImageUrl") %>' 
             Visible="False">
  </asp:Label><br />
  <asp:Label ID="NameLabel" runat="server" 
             Text='<%# Eval("Name") %>'>
  </asp:Label><br />
  <asp:Label ID="DescriptionLabel" runat="server" 
             Text='<%# Eval("Description") %>'>
  </asp:Label><br />
  Rs.<asp:Label ID="PriceLabel" runat="server" 
             Text='<%# Eval("Price", "{0:##0.00}" ) %>'>
  </asp:Label><br />
</ItemTemplate>
</asp:DataList><br />
<asp:ImageButton ID="ImageButton1" 
        runat="server" onclick="ImageButton1_Click" 
        ImageUrl="~/images/Add_To_Cart.gif" Width="88px" /><br /><br />
<asp:HyperLink ID="HyperLink1" runat="server" 
               NavigateUrl="~/Laptop2.aspx">
               Return to Product Page
</asp:HyperLink>
</center>
</asp:Content>

