<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Fashionmen.aspx.cs" Inherits="Fashionhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image:url('images/Fahionbg.jpg'); width: 1217px; margin-left: 40px; margin-right: 40px; height: auto" >
<table style="padding-left:0px">
    <tr>
    <td class="style1">
    <div style="width:150px ;height:auto; background-color:transparent"></div>
    <hr width="100%" />
     <div style="width:150px ;height:auto; background-color:transparent"></div>
    </td>
	<td>

<div>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
SelectCommand="SELECT [ProductID], [Name], [Description], 
               [Price], [ImageUrl] FROM [productfashion]">
</asp:SqlDataSource>
</div>

<asp:DataList ID="DataList2" runat="server" 
              DataSourceID="SqlDataSource2" 
              RepeatColumns="3"
              RepeatDirection="Horizontal" Height="432px" Width="1018px" 
            CellSpacing="10" onselectedindexchanged="DataList2_SelectedIndexChanged">
<ItemTemplate>
<asp:ImageButton ID="ImageButton1" runat="server" 
ImageUrl='<%# Eval("ImageUrl", "~/images\\{0}") %>' 
PostBackUrl='<%# Eval("ProductID","Productdetail2.aspx?ProductID={0}") %>' />
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

</td>
    </tr>
    </table>
</div>
</asp:Content>

