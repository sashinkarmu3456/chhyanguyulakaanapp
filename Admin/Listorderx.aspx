<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="Listorderx.aspx.cs" Inherits="Admin_Listorderx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentheadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbodyadm" Runat="Server">
    <form id="form1" runat="server">
    <div class="table-responsive">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" CssClass="table table-striped">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                <asp:BoundField DataField="proid" HeaderText="proid" SortExpression="proid" />
                <asp:BoundField DataField="proname" HeaderText="proname" SortExpression="proname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
                <asp:BoundField DataField="orderstatus" HeaderText="orderstatus" SortExpression="orderstatus" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT * FROM [tblorderdetail]"></asp:SqlDataSource>
    </form>
</asp:Content>

