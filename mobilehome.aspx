﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="mobilehome.aspx.cs" Inherits="mobilehome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image:url('images/phonebg.jpg'); width: 1217px; margin-left: 38px; margin-right: 40px; height: auto; background-repeat:no-repeat" >
    <table style="padding-left:0px">
    <tr>
    <td class="style1" >
    <div style="width:150px ;height:auto; background-color:transparent"></div>
    <hr width="100%" />
     <div style="width:150px ;height:auto; background-color:transparent"></div>
    </td>
	<td>
    <div>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
SelectCommand="SELECT [ProductID], [Name], [Description], 
               [Price], [ImageUrl] FROM [productmobile]">
</asp:SqlDataSource>
</div>

<asp:DataList ID="DataList4" runat="server" 
              DataSourceID="SqlDataSource4" 
              RepeatColumns="3"
              RepeatDirection="Horizontal" Height="432px" Width="1018px" 
            CellSpacing="10" onselectedindexchanged="DataList4_SelectedIndexChanged">
<ItemTemplate>
<asp:ImageButton ID="ImageButton1" runat="server" 
ImageUrl='<%# Eval("ImageUrl", "~/images\\{0}") %>' 
PostBackUrl='<%# Eval("ProductID","Productsdetail7.aspx?ProductID={0}") %>' />
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

