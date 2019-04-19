<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Adminpanel.aspx.cs" Inherits="Adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 1204px; margin-left: 40px; margin-right: 40px; height: 950px; text-align: left;" >

    <br />
    <br />
<h1>Add Product Items</h1>
<hr />
    <br />
    <br />
    Product ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :
    <asp:TextBox ID="TextBox1" runat="server" Width="257px"></asp:TextBox>
    <br />
    <br />
    <br />
    Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :
    <asp:TextBox ID="TextBox2" runat="server" width="257px"></asp:TextBox>
    <br />
    <br />
    <br />
    Product Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    Product Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :
    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <br />
    Product Picture Upload&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:FileUpload 
        ID="FileUpload1" runat="server" />
&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    Product Catagory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Select Category</asp:ListItem>
        <asp:ListItem>Books_nw arrivals</asp:ListItem>
        <asp:ListItem>Books_popular</asp:ListItem>
        <asp:ListItem>Laptops</asp:ListItem>
        <asp:ListItem>Cameras</asp:ListItem>
        <asp:ListItem>Mobiles</asp:ListItem>
        <asp:ListItem>Fashion_Men</asp:ListItem>
        <asp:ListItem>Fashion_Women</asp:ListItem>
        <asp:ListItem>Fashion_kids</asp:ListItem>
        <asp:ListItem>sale</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
        ImageUrl="~/images/submit_button.gif" onclick="ImageButton1_Click" 
        Width="86px" style="margin-left: 0px" />

</div>
</asp:Content>

