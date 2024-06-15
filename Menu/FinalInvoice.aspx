<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinalInvoice.aspx.cs" Inherits="Menu_FinalInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invioce</title>
    <link href="../css/allstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 122px;
        }
        .auto-style2 {
            width: 100%;
            height: 55px;
        }
        .auto-style3 {
            height: 29px;
            color: #000000;
        }
        .auto-style4 {
            width: 175px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 42px;
            background-color: #5D7B9D;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 418px;
        }
        .auto-style9 {
            color: #000000;
        }
    </style>
</head>
<body>
    <asp:Panel ID="Panel1" runat="server">
    <form id="form1" runat="server">
        <table class="auto-style1" border="1">
            <tr><td style="text-align: center">
                    <h1 class="auto-style6">CHYANGU:YU LAKAAN</h1></td></tr>
            <tr><td><h2 style="text-align: center">Invoice&nbsp;&nbsp;</h2></td></tr>
            <tr><td>
                &nbsp;</td></tr>
            <tr><td><h4>Order ID :<asp:Label ID="Labid" runat="server"></asp:Label></h4></td></tr>
        </table>
        <div>
            <table class="auto-style2" border="1">
                <tr><td class="auto-style3"><strong>Order Date :
                        <asp:Label ID="Labdt" runat="server"></asp:Label>
                        </strong></td></tr>
                <tr><td><table class="auto-style2" border="1">
                            <tr class="auto-style9"><td class="auto-style4">Buyer Address<br />
                                    <asp:Label ID="Labbuyer" runat="server"></asp:Label></td>
                                <td>Seller Address<br />
                                    CHYANGU:YU LAKAAN</td></tr>
                        </table></td></tr>
                <tr><td><blockquote class="card-text"> 
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="150px" ShowFooter="True" Width="850px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="Sno" HeaderText="S.No" />
                                    <asp:BoundField DataField="Pro_ID" HeaderText="Product ID" />
                                    <asp:BoundField DataField="Pro_Name" HeaderText="Product Name" />
                                    <asp:ImageField DataImageUrlField="Pro_Thumb" HeaderText="Product Image">
                                        <ControlStyle Height="45px" Width="75px" />
                                        <ItemStyle Height="45px" Width="75px" Wrap="False" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Pro_Rate" HeaderText="Price" />
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                    <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" />
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
                         </blockquote></td></tr>
                <tr><td class="auto-style9">Total :<asp:Label ID="Labtotal" runat="server"></asp:Label></td></tr>
                <tr><td class="auto-style5">
                        <h5>THIS IS A COMPUTER GENERATED INVOICE DOES NOT REQUIRED SIGNATURE</h5></td></tr>
                <tr><td>
                    &nbsp;</td></tr>
            </table>

        </div>
        <table class="auto-style7">
            <tr>
                <td class="auto-style8">
                <asp:Button ID="Butgenerate" runat="server" CssClass="btn btn-success" Text="Download Invoice" Width="140px" OnClick="Butgenerate_Click" />
                    </td>
                <td>
                    <asp:Button ID="Butlogout" runat="server" Text="Logout" CssClass="btn btn-danger" Width="178px" OnClick="Butlogout_Click" />
                </td>
            </tr>
        </table>
    </form>
</asp:Panel>
</body>
</html>
