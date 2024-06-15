<%@ Page Title="" Language="C#" MasterPageFile="~/Menu/CartMasterMenu.master" AutoEventWireup="true" CodeFile="DetailView.aspx.cs" Inherits="Menu_DetailView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMenuhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMenu" Runat="Server">
    <style>
        .card {
            height: 400px; /* Adjust the height as needed */
        }
        .card-body {
            background: rgba(0, 0, 0, 0.9);
            backdrop-filter: blur(10px);
            height: 100%;
        }
    </style>
    <asp:Label ID="Labcart" runat="server" Text="Label" Visible="false"></asp:Label>
    <div class="container">
        <div class="row">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Pro_ID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="col-md-12 mb-4 mt-4">
                        <div class="card h-100">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <asp:Image ID="Image1" runat="server" CssClass="card-img-top" ImageUrl='<%# Eval("Pro_Thumb") %>' Height="600px" />
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <p class="card-text"><asp:Label ID="Label2" runat="server" Text='<%# Eval("Pro_Desc") %>'></asp:Label></p>
                                        <p class="card-text">NRs. <asp:Label ID="Label4" runat="server" Text='<%# Eval("Pro_Rate") %>'></asp:Label></p>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" for="quantitySelector">Quantity</label>
                                            </div>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-select">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="btn btn-primary" CommandName="Addtocart" CommandArgument='<%# Eval("Pro_ID") %>' />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([Pro_ID] = @Pro_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pro_ID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
