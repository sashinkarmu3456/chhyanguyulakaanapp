<%@ Page Title="" Language="C#" MasterPageFile="~/Menu/CartMasterMenu.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Menu_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMenuhead" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMenu" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label">Checkout</asp:Label>
    <blockquote class="card-text"> 
        <div class="form-group" style="color:white;">
        <table>
            <tr><td >Order ID : </td>
                <td ><asp:TextBox runat="server" ID="Laboid" CssClass="form-username form-control" placeholder="Order No" Readonly="true" Width="300px" Wrap="False"></asp:TextBox></td>
            </tr><tr>
                <td >Order Date : </td>
                <td ><asp:TextBox runat="server" ID="Labdate" CssClass="form-username form-control" placeholder="Order Date"  Readonly="true" Width="300px" Wrap="False"></asp:TextBox></td>
            </tr></table>
	</div></blockquote>
    <blockquote class="card-text" > 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="150px" ShowFooter="True" Width="850px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Sno" />
            <asp:BoundField DataField="Pro_ID" HeaderText="Product ID" />
            <asp:BoundField DataField="Pro_Name" HeaderText="Product Name" />
            <asp:ImageField DataImageUrlField="Pro_Thumb" HeaderText="Product Image">
                <ControlStyle Height="45px" Width="75px" />
                <ItemStyle Height="45px" Width="75px" Wrap="False" />
            </asp:ImageField>
            <asp:BoundField DataField="Pro_Rate" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" />
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Wrap="False" Height="30px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="30px" Wrap="False" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </blockquote>


    <blockquote class="card-text" style="color:white"> 
                       <div class="form-group">
                        <table><tr>
                            <td >Address : </td>
                                <td ><asp:TextBox runat="server" ID="Textaddress" CssClass="form-username form-control" placeholder="Enter your Address" Width="300px" Wrap="False" Height="72px" TextMode="MultiLine"></asp:TextBox></td>
                            </tr><tr>
                                <td >Mobile No : </td>
                                <td ><asp:TextBox runat="server" ID="Textmobile" CssClass="form-username form-control" placeholder="Enter Mobile" Width="300px" Wrap="False"></asp:TextBox></td>
                            </tr></table>
                           <asp:Label ID="Label2" runat="server" Text="Payment : Cash on Delivery Only"></asp:Label>
			        </div>

    <asp:Button ID="Button1" runat="server" Text="Checkout" Width="136px" OnClick="Button1_Click" />
    <br /></blockquote>

</asp:Content>

