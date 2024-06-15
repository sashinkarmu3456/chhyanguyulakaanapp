<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="RequestCP.aspx.cs" Inherits="Admin_RequestCP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentheadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbodyadm" Runat="Server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ulogin" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" InsertVisible="False" ReadOnly="True" SortExpression="uid" />
                <asp:BoundField DataField="ulogin" HeaderText="ulogin" ReadOnly="True" SortExpression="ulogin" />
                <asp:BoundField DataField="ufullname" HeaderText="ufullname" SortExpression="ufullname" />
                <asp:BoundField DataField="uaddress" HeaderText="uaddress" SortExpression="uaddress" />
                <asp:BoundField DataField="umobile" HeaderText="umobile" SortExpression="umobile" />
                <asp:ButtonField CommandName="Modifyprodu" Text="Modify" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT [uid], [ulogin], [ufullname], [uaddress], [umobile] FROM [tbluser]"></asp:SqlDataSource>
    </form>

</asp:Content>

