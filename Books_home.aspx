<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Books_home.aspx.cs" Inherits="Books_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image:url('images/bookbg.jpg'); width: 1217px; margin-left: 40px; margin-right: 40px; height: auto; padding-left:0px; background-repeat:no-repeat" >
    <table style="padding-left:0px; height: 1172px;">
    <tr>
    <td class="style1" >
    <div style="width:150px ;height:auto; background-color:transparent"></div>
    <hr width="100%" />
     <div style="width:150px ;height:auto; background-color:transparent"></div>
    </td>
	<td>
    <div>
    <h2 style="background-position: center center; font-family: 'Bauhaus 93'; font-size: xx-large; font-weight: normal; font-style: normal; text-transform: capitalize; text-decoration: none; background-color: #C0C0C0; background-repeat: no-repeat;">NEW&nbsp; ARRIVALS</h2>
<hr />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
SelectCommand="SELECT [ProductID], [Name], [Description], 
               [Price], [ImageUrl] FROM [productbooks]">
</asp:SqlDataSource>
</div>

<asp:DataList ID="DataList5" runat="server" 
              DataSourceID="SqlDataSource2" 
              RepeatColumns="3"
              RepeatDirection="Horizontal" Height="309px" Width="1018px" 
            CellSpacing="10" onselectedindexchanged="DataList5_SelectedIndexChanged">
<ItemTemplate>
<asp:ImageButton ID="ImageButton1" runat="server" 
ImageUrl='<%# Eval("ImageUrl", "~/images\\{0}") %>' 
PostBackUrl='<%# Eval("ProductID","Productdetail5.aspx?ProductID={0}") %>' />
<br />
<h1 style="text-transform: uppercase; font-weight: bold; font-style: normal; font-size: large; color: #000000;"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'>
</asp:Label><br /></h1>
Rs.<asp:Label ID="PriceLabel" runat="server" 
           Text='<%# Eval("Price", "{0:##0.00/-}") %>'>
</asp:Label><br />
<br />
<br />
</ItemTemplate>

</asp:DataList><br />


<hr />
   
        <br />
   
 <div>
 <h2 style="background-position: center center; font-family: 'Bauhaus 93'; font-size: xx-large; font-weight: normal; font-style: normal; text-transform: capitalize; text-decoration: none; background-color: #C0C0C0; background-repeat: no-repeat;">BEST SELLERS</h2>
<hr />
<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
SelectCommand="SELECT [ProductID], [Name], [Description], 
               [Price], [ImageUrl] FROM [productbooks1]">
</asp:SqlDataSource>
</div>

<asp:DataList ID="DataList6" runat="server" 
              DataSourceID="SqlDataSource5" 
              RepeatColumns="3"
              RepeatDirection="Horizontal" Height="266px" Width="1018px" 
            CellSpacing="10" onselectedindexchanged="DataList6_SelectedIndexChanged">
<ItemTemplate>
<asp:ImageButton ID="ImageButton1" runat="server" 
ImageUrl='<%# Eval("ImageUrl", "images\\{0}") %>' 
PostBackUrl='<%# Eval("ProductID","Productdetail6.aspx?ProductID={0}") %>' />
<br />
<h1 style="text-transform: uppercase; font-weight: bold; font-style: normal; font-size: large; color: #000000;"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'>
</asp:Label><br /></h1>
<asp:Label ID="PriceLabel" runat="server" 
           Text='<%# Eval("Price", "{0:Rs ##0.00/-}") %>'>
</asp:Label><br />
<br />
<br />
</ItemTemplate>

</asp:DataList><br />

     
     </td>
    </tr>
    </table>
</div>
</asp:Content>

