<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image:url('images/contact-usbg.jpg'); height:751px">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <pre style="margin-top: 4px" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
         <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" 
            Font-Size="Medium" Font-Names="Adobe Heiti Std R"></asp:Label>       :              <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="335px" 
            Height="27px"></asp:TextBox>       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
            ErrorMessage="Enter name" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />       
        <asp:Label ID="Label5" runat="server" Text="E-mail ID" Font-Bold="True" 
            Font-Italic="False" Font-Size="Medium" Font-Names="Adobe Heiti Std R"></asp:Label>     :   <asp:TextBox ID="TextBox5" 
            runat="server" Height="27px" style="margin-left: 86px" Width="335px"></asp:TextBox><asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" 
            ErrorMessage="Enter valid E-mail address" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" 
            ErrorMessage="Enter Email-ID" ForeColor="Red">*</asp:RequiredFieldValidator>                                                                     
<br />
<br />       
                         <asp:TextBox 
            ID="TextBox6" runat="server" style="margin-left: 17px; z-index: 1; left: 327px; top: 571px; position: absolute; width: 328px; height: 125px;" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Size="Medium" 
    Text="Comments" Font-Bold="True" Font-Names="Adobe Heiti Std R"></asp:Label>    :
    </pre>
        <br />
        <br />
        <br />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/submit_button.gif" onclick="ImageButton1_Click" 
        style="margin-left: 67px" />
        </div>
        </asp:Content>

