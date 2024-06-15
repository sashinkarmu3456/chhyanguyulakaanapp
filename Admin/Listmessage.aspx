<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="Listmessage.aspx.cs" Inherits="Admin_Listmessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentheadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbodyadm" Runat="Server">
    <form id="form1" runat="server">
       <div class="table-responsive">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" DataKeyNames="Sno" CssClass="table table-striped">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" SortExpression="Sno" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="ufullname" HeaderText="ufullname" SortExpression="ufullname" />
                <asp:BoundField DataField="umessage" HeaderText="umessage" SortExpression="umessage" />
                <asp:BoundField DataField="msgdate" HeaderText="msgdate" SortExpression="msgdate" />
                <asp:BoundField DataField="msgstat" HeaderText="msgstat" SortExpression="msgstat" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT [Sno], [ufullname], [umessage], [msgdate], [msgstat] FROM [tblcontact]"></asp:SqlDataSource>

   
    </form>
</asp:Content>

