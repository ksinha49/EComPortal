﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Adminpanel3.aspx.cs" Inherits="Adminpanel3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 1203px; margin-left: 40px; margin-right: 40px; height: auto" >

    <h1>Admin Database</h1><br />
    Select From Catagories&nbsp; :&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="32px" 
        Width="198px" AutoPostBack="True">
        <asp:ListItem>Select Catagory</asp:ListItem>
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

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:GridView ID="GridView1" runat="server" Height="296px" Width="985px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:GridView ID="GridView2" runat="server" Height="296px" Width="985px" 
                onselectedindexchanged="GridView2_SelectedIndexChanged" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:GridView ID="GridView3" runat="server" Height="296px" 
                onselectedindexchanged="GridView3_SelectedIndexChanged" Width="985px" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:GridView ID="GridView4" runat="server" Height="296px" 
                onselectedindexchanged="GridView4_SelectedIndexChanged" Width="985px" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:GridView ID="GridView5" runat="server" Height="296px" 
                onselectedindexchanged="GridView5_SelectedIndexChanged" Width="985px" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <asp:GridView ID="GridView6" runat="server" Height="296px" 
                onselectedindexchanged="GridView6_SelectedIndexChanged" Width="985px" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View7" runat="server">
            <asp:GridView ID="GridView7" runat="server" Height="296px" 
                onselectedindexchanged="GridView7_SelectedIndexChanged" Width="985px" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
        <asp:View ID="View8" runat="server">
            <asp:GridView ID="GridView8" runat="server" Height="296px" 
                onselectedindexchanged="GridView8_SelectedIndexChanged" Width="985px" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:View>
    </asp:MultiView>

</div>
</asp:Content>

