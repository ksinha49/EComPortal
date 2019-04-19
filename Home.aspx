<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="ct" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sliderFrame">
    <center>
        <div id="slider">
            
            <img src="images/image-slider-2.jpg" alt="Welcome to E-shop.Com" width="1085px"/>
            <img src="images/image-slider-1.jpg" alt="Fashion Collection" width="1085px"/>
            <a href="Home.aspx">
                <img src="images/image-slider-7.jpg" alt="Get Exciting Discount Offers!!!"  width="1085px"/>
            </a>
            <img src="images/image-slider-4.jpg" alt="Smart Phones" width="1085px"/>
            <img src="images/image-slider-5.jpg" alt="Watches and Accessories a Exciting Prices"  width="1085px"/>
            <img src="images/image-slider-6.jpg" alt="Mega Sale on Weekends!!  "  width="1085px"/>
            <img src="images/image-slider-3.jpg" alt="Accessories and Beauty products "  width="1085px"/>

             
        </div></center>
       
        </div>
        <div class="div1" style="height:auto; width:auto; padding-top:15px; margin-left: 31px;margin-right: 31px; padding-right: 50px; padding-left: 50px;">
       
                       <a href="Books_home.aspx" 
                           style="border: 0px hidden #FFFFFF; background-color: #FFFFFF"> 
                       <asp:Image ID="Image2" runat="server" Height="241px" 
                    style="border-style: none; border-width: 0px;margin-right: 0px; margin-top: 0px" Width="323px" 
                            ImageUrl="~/images/Contents/1.jpg" BackColor="White" /> </a>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="Fashionmen.aspx"><asp:Image ID="Image3" runat="server" Height="241px" 
                    style="border-style: none; border-width: 0px; margin-right: 0px; margin-top: 0px" Width="323px" 
                            ImageUrl="~/images/Contents/2.jpg" /></a>
                
               
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="Laptop2.aspx"><asp:Image ID="Image6" runat="server" Height="241px" 
                    style="border-style: none; border-width: 0px;margin-right: 0px; margin-top: 0px" Width="323px" 
                            ImageUrl="~/images/Contents/3.jpg" /></a>
                
               
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                
               
               <a href="mobilehome.aspx"> <asp:Image ID="Image4" runat="server" Height="241px" 
                            style="border-style: none; border-width: 0px;margin-right: 0px; margin-top: 0px" Width="323px" 
                            ImageUrl="~/images/image-slider-4.jpg" /></a>
                
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
        <a href="Camera2.aspx"><asp:Image ID="Image5" runat="server" Height="241px" style="border-style: none; border-width: 0px;margin-right: 0px; margin-top: 0px" 
                            Width="323px" ImageUrl="~/images/Contents/6.jpg"/></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
        <a href="Fashionwomen.aspx" 
                           style="background-color: #FFFFFF; border-style: hidden"><asp:Image ID="Image7" runat="server" Height="241px" style="border-style: none; border-width: 0px;margin-right: 0px; margin-top: 0px" 
                            Width="323px" ImageUrl="~/images/Contents/4.jpg"/></a>
        </div>
           
        
</asp:Content>


