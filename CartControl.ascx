<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CartControl.ascx.cs" Inherits="CartControl" %>
<asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ProductID" OnRowCancelingEdit="grdCart_RowCancelingEdit" 
    OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" 
    OnRowUpdating="grdCart_RowUpdating" Height="317px" Width="1070px" 
    style="margin-left: 82px">
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
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <EmptyDataTemplate><center>
        Your Shopping Cart is empty, add items
        <a href="Home.aspx">Add Products</a></center>
    </EmptyDataTemplate>
</asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="TotalLabel" runat="server" Font-Size="X-Large" ForeColor="Red" 
    Font-Bold="True"></asp:Label>