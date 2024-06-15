<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="ModProduct.aspx.cs" Inherits="Admin_ModProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentheadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbodyadm" Runat="Server">
    <form id="form1" runat="server">
     <div class="table-responsive">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT [Pro_ID], [Pro_Name], [Pro_Desc], [Pro_Rate] FROM [tblProduct]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Pro_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-striped">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Pro_ID" HeaderText="Pro_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pro_ID" />
                <asp:BoundField DataField="Pro_Name" HeaderText="Pro_Name" SortExpression="Pro_Name" />
                <asp:BoundField DataField="Pro_Desc" HeaderText="Pro_Desc" SortExpression="Pro_Desc" />
                <asp:BoundField DataField="Pro_Rate" HeaderText="Pro_Rate" SortExpression="Pro_Rate" />
                <asp:CommandField ShowSelectButton="True" />
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
    </form>
</asp:Content>

