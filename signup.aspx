<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:1377px; background-image:url('images/signup.jpg'); background-repeat:no-repeat">
<h1 style="font-size: 40px; font-family: Andalus; text-transform: capitalize; color: #000000; height: 105px; width: 628px; margin-left: 65px; font-variant: normal;">REGISTER AND SUBSCRIBE TO <br />FASHION & GADGET NEWS</h1>
       <h3 style="text-decoration: none; font-family: 'Adobe Fangsong Std R'; font-size: medium; width: 436px; height: 65px; margin-left: 62px; margin-top: 15px;"> Register for an account with 
         EShopper&#39;sStop.COM and you will receive weekly&nbsp;
      email updates on the hottest looks, trends and much much more.
      </h3>
       <h3 style="text-decoration: none; font-family: 'Adobe Fangsong Std R'; font-size: medium; width: 434px; height: 81px; margin-left: 62px; margin-top: 28px;"> 
       Once registered, you can personalize your address book and add items to your Wish List with ease! What are you waiting for?</h3>
       <hr />
       <pre>
        <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" 
            Font-Size="Medium" Font-Names="adobe heiti std r, medium"></asp:Label>                <asp:TextBox 
            ID="TextBox1" runat="server" style="margin-left: 38px" Width="354px" 
            Height="27px"></asp:TextBox><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
            ErrorMessage="Enter name" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />      
       <asp:Label ID="Label2" runat="server" Text="Billing Address" Font-Bold="True" 
            Font-Size="Medium" Font-Names="adobe heiti std r, medium"></asp:Label>                                                           <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" 
            ErrorMessage="Enter address" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>      <asp:TextBox 
            ID="TextBox6" runat="server" 
        style="margin-left: 0px; z-index: 1; left: 321px; top: 633px; position: absolute; height: 66px; width: 360px; right: 646px;" 
        TextMode="MultiLine"></asp:TextBox>
<br />
<br />  
 



       <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Bold="True" 
            Font-Size="Medium" Font-Names="adobe heiti std r, medium"></asp:Label>    <asp:TextBox 
            ID="TextBox7" runat="server" style="margin-left: 62px" Width="367px" 
            Height="27px"></asp:TextBox><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" 
            ErrorMessage="Enter phone no." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator 
        ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" 
        ErrorMessage="Enter Valid Phone no." ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
<br />
<br />          
      
       <asp:Label ID="Label5" runat="server" Text="E-mail ID" Font-Bold="True" 
            Font-Italic="False" Font-Size="Medium" 
        Font-Names="adobe heiti std r, medium"></asp:Label>   <asp:TextBox ID="TextBox5" 
            runat="server" Height="26px" style="margin-left: 119px" Width="367px"></asp:TextBox><asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" 
            ErrorMessage="Enter valid E-mail address" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" 
            ErrorMessage="Enter Email-ID" ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />       
       
       <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" 
            Font-Italic="False" Font-Size="Medium" 
        Font-Names="adobe heiti std r, medium"></asp:Label>   <asp:TextBox ID="TextBox3" 
            runat="server" Height="26px" style="margin-left: 117px" Width="367px" 
            TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" 
            ErrorMessage="Enter password" ForeColor="Red">*</asp:RequiredFieldValidator>

<br />            
<br />       
       
       <asp:Label ID="Label4" runat="server" Text="Confirm Password" Font-Bold="True" 
            Font-Italic="False" Font-Size="Medium" 
        Font-Names="adobe heiti std r, medium"></asp:Label>   <asp:TextBox ID="TextBox4" 
            runat="server" Height="26px" style="margin-left: 51px" Width="367px" 
            TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" 
            ErrorMessage="Enter password again" ForeColor="Red">*</asp:RequiredFieldValidator><asp:CompareValidator 
            ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" 
            ControlToValidate="TextBox4" ErrorMessage="Password Don't Match" 
            ForeColor="Red">*</asp:CompareValidator>
     <br />
     <br />
           <h3 style="margin-left: 59px"><b>Prove that you are not a ROBOT:</b></h3>
       <asp:Image ID="Image1" runat="server" src="Cachemakr.aspx" />&nbsp;&nbsp; 
    <asp:TextBox 
        ID="TextBox2" runat="server" height="26px" width="182px" 
        style="margin-left: 26px"></asp:TextBox>   <asp:Label 
        ID="Label6" runat="server"></asp:Label>
              
          
       </pre>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/submit_button.gif" onclick="ImageButton1_Click" 
        style="margin-left: 54px" Width="101px" />
        </div>
</asp:Content>

