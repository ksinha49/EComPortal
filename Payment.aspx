<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:100%;height:auto" class="style1">
<h1 style="color: #000000; font-size: 75px; font-weight: lighter; font-family: 'Franklin Gothic Demi Cond'; font-style: normal; text-transform: capitalize; height: 84px;">Payment&nbsp;
</h1>
    <br />
    <hr style="height: -15px; padding-top: 0px; padding-bottom: 0px;" />
    <div>
        <br />
&nbsp;&nbsp; Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp; Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server"></asp:Label>
<br />


    <br />
&nbsp;&nbsp;
    Payment method&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<asp:DropDownList 
            ID="DropDownList1" runat="server" Height="32px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="178px" 
        AutoPostBack="True">
        <asp:ListItem>Select </asp:ListItem>
        <asp:ListItem>Paypal</asp:ListItem>
        <asp:ListItem>Credit Card</asp:ListItem>
        <asp:ListItem>Debit Card</asp:ListItem>
        <asp:ListItem>COD</asp:ListItem>
        <asp:ListItem>Money Order/Cheque</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
&nbsp;
    </div>
    <asp:MultiView ID="MultiView1" runat="server" ViewStateMode="Enabled">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:View ID="View1" runat="server">
                <div>
                    &nbsp; &nbsp;Paypal Account No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
                        style="margin-left: 48px" Width="219px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp; Security Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div>
                    &nbsp; Credit card&nbsp;No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="215px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp; CVV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <div>
                    &nbsp; Debit card No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="207px"></asp:TextBox>
                    <br />
                    &nbsp;<br /> &nbsp; Pin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </div>
            </asp:View>
            <asp:View ID="View4" runat="server">
            </asp:View>
            <asp:View ID="View5" runat="server">
                <div>
                    &nbsp;&nbsp; DD/Cheque /Money Order No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Width="283px"></asp:TextBox>
                </div>
            </asp:View>
            <asp:View ID="View6" runat="server">
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select a Mode of Payment&nbsp;.</div>
            </asp:View>
        </div>
    </asp:MultiView>
    <div class="style1">
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/submit_button.gif" onclick="ImageButton2_Click" />
&nbsp;<asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
    </div>
    </div>
</asp:Content>

