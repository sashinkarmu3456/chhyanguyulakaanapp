<%@ Page Title="" Language="C#" MasterPageFile="~/Menu/CartMasterMenu.master" AutoEventWireup="true" CodeFile="Feature.aspx.cs" Inherits="Menu_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMenuhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMenu" Runat="Server">
     <section id="SectionFeature" class="about-section">
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text" style="text-align:left"><h2 style="color:black;">Featured Collection</h2></blockquote>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT * FROM [tblProduct] where Pro_Category = 'Feature'"></asp:SqlDataSource>
                    <asp:DataList ID="DataFeature" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataFeature_ItemCommand">
                        <ItemTemplate>
                            <table class="table">
                                <tr ><td style="text-align: center">
                                        <asp:Image ID="Image1" runat="server" style="height:225px; width:400px" ImageUrl='<%# Eval("Pro_Thumb") %>' />
                                    </td></tr>
                                <tr><td>
                                    <blockquote class="card-text" style="text-align: Left"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Pro_Name") %>' Font-Size="Larger"></asp:Label></blockquote>
                                        <asp:Label ID="Label2" runat="server" Visible="false" style="text-align: center" Text='<%# Eval("Pro_ID") %>'></asp:Label>
                                    </td></tr>
                                <tr><td>
                                        <blockquote class="card-text"><asp:Label ID="Label3" runat="server" style="text-align: center" Text='<%# Eval("Pro_Desc") %>'></asp:Label></blockquote>
                                </td></tr>
                                <tr><td>
                                    <blockquote class="card-text" style="text-align: Left"><asp:Label ID="Label5" runat="server" Text="NRs. "><asp:Label ID="Label4" runat="server" Text='<%# Eval("Pro_Rate") %>'></asp:Label></asp:Label></blockquote>
                                </td></tr>
                                <tr>
                                <td style="height:70px"><blockquote class="card-text">
                                    <asp:Label ID="Label8" runat="server" Text="Label">Quantity</asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="47px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList></blockquote>
                                </td>
                            </tr>
                                <tr><td>
                                    <asp:Button ID="ButDetail" runat="server" Text="View Detail" CssClass="btn btn-secondary" CommandName="ViewDetail" CommandArgument='<%#Eval("Pro_ID")%>' />
                                    <asp:Button ID="ButCart" runat="server" Text="Add To Cart" CssClass="btn btn-primary" CommandName="Addtocart" CommandArgument='<%# Eval("Pro_ID") %>' />
                               </td></tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList> 
                </div></div></section>
    </asp:Content>




