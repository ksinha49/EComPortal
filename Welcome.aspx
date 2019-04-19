<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/main.jpg" style=" background-repeat:no-repeat">
    <form id="form1" runat="server">
    <div style="border-style: inherit; border-width: medium; border-color: #000000; width: 493px; height: 137px; margin-top: 354px; font-weight: bold; font-style: inherit; text-transform: capitalize; color: #FFFFFF; font-size: large; background-color: #000000; margin-left: 105px;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="box-mid-txt" style="font-size: xx-large">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Help us locate you
        </div>
        <div class="box-mid-txtred" style="font-size: small">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Which city would you like to get your deals from
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" Visible="False"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            Height="30px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="margin-left: 38px" Width="200px">
            <asp:ListItem Value="Select City">Select City</asp:ListItem>
            <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
            <asp:ListItem>Mumbai</asp:ListItem>
            <asp:ListItem>Kolkata</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
            <asp:ListItem>Chandigarh</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/submit_button.gif" onclick="ImageButton1_Click" 
            Height="23px" />
        <br />
&nbsp;<br />
    
    </div>
    </form>
</body>
</html>
