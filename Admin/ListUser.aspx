<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="ListUser.aspx.cs" Inherits="ListUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Contentheadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbodyadm" Runat="Server">
    <form id="form1" runat="server">
    <div class="table-responsive">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ulogin" DataSourceID="SqlDataSource1" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-striped">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="uid" />
                <asp:BoundField DataField="ulogin" HeaderText="Username/Email" ReadOnly="True" SortExpression="ulogin" />
                <asp:BoundField DataField="ufullname" HeaderText="Full Name" ReadOnly="True" SortExpression="ufullname" />
                <asp:BoundField DataField="uaddress" HeaderText="Address" SortExpression="uaddress" />
                <asp:BoundField DataField="umobile" HeaderText="Mobile" SortExpression="umobile" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT [uid], [ulogin], [ufullname], [uaddress], [umobile] FROM [tbluser]"></asp:SqlDataSource>
    </form>
</asp:Content>

