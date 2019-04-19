<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Bill" %>
<%@ Register Src="CartControl.ascx" TagName="CartControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 38px;
            width: 1025px;
        }
        .style3
        {
            height: 108px;
            width: 1025px;
        }
        .style4
        {
            height: 63px;
            width: 1025px;
        }
        .style5
        {
            width: 1025px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 1121px; margin-left: 26px; margin-right: 0px">

    
  <tr>   <td class="style5"> <center> <asp:Label ID="Label1" runat="server" Text="BILL" Font-Bold="True" 
            Font-Names="Georgia" Font-Size="65px" Font-Underline="True"></asp:Label></center></td>
             </tr>

<tr>
<td class="style1">
        NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="Adobe Gothic Std B"></asp:Label>
        </td>   
        </tr>
<tr>
<td class="style4">
        EMAIL ID&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Names="Adobe Gothic Std B"></asp:Label></td>
        </tr>
<tr><td class="style3">
        ADDRESS&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Names="Adobe Gothic Std B"></asp:Label>
        <br />
        <br />
        <br />
    </td>
       </tr>
<tr>
      <td class="style5">  BILL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br />
      </td></tr>
      <tr style="width:895px"><td>
      <asp:GridView ID="grdCart1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ProductID" Height="317px" Width="1070px" 
    style="margin-left: 82px; margin-bottom: 4px;" 
              onselectedindexchanged="grdCart1_SelectedIndexChanged">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl", "~/images/{0}") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" DataFormatString="{0:Rs ##0.00/-}" HeaderText="Price" ReadOnly="True" />
       <asp:BoundField DataField="SubTotal" DataFormatString="{0:Rs ##0.00/-}" HeaderText="Total"
            ReadOnly="True" />
       
    </Columns>
    
</asp:GridView></td></tr>
<tr><td><center>
<asp:Label ID="TotalLabel" runat="server" Font-Size="X-Large" ForeColor="Red" 
    Font-Bold="True"></asp:Label></center>
             </td></tr>
       
</table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" Height="83px" 
        ImageUrl="~/images/next.jpg" onclick="ImageButton1_Click" 
        style="margin-left: 0px" Width="116px" />
    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
</asp:Content>

