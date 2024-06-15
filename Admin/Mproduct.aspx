<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="Mproduct.aspx.cs" Inherits="Admin_Mproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentheadadm" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbodyadm" Runat="Server">

    <!-- Main content area -->
        <main class="container">
            <div class="row">
                <!-- Main content -->
                <div class="col-sm-8">
                    <article><blockquote class="card-text"><h4>Add Product</h4></blockquote>
                    <fieldset><legend></legend>
                    <form id="Form3" runat="server" role="form" method="post" class="login-form">
			        <blockquote class="card-text"> 
                       <div class="form-group">
                       <table class="table">
                           <tr><td>Image :</td>
                                <td class="auto-style1">
                                    <asp:FileUpload ID="ImgUpload1" runat="server" CssClass="form-control" Width="347px" onchange="ImagePreview(this);"/>
                                </td></tr>
                            <tr><td>Product Name:</td>
                                <td class="auto-style1"><asp:TextBox runat="server" ID="Txtproname" CssClass="form-control" placeholder="Enter Full Product Name"  Width="493px"></asp:TextBox>
                                    <asp:Label ID="LabID" runat="server" Visible="False"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Txtproname" ValidationGroup="valmemb" ErrorMessage="Name Required "></asp:RequiredFieldValidator>
                                </td>
                                <td></td></tr>
                           <tr><td>Product Desc:</td>
                                <td class="auto-style1"><asp:TextBox runat="server" ID="Textdesc" CssClass="form-control" Width="500px" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Requireddesce" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textdesc" ValidationGroup="valmemb" ErrorMessage="Description Required "></asp:RequiredFieldValidator>
                                </td><td></td></tr>
                            <tr><td>Category :</td>
                                <td class="auto-style1"><asp:DropDownList ID="Dropmenu" runat="server" CssClass="form-control" Width="500px" Height="40px">
                                        <asp:ListItem>Feature</asp:ListItem>
                                        <asp:ListItem>Classic</asp:ListItem>
                                        <asp:ListItem>Kids</asp:ListItem>
                                        <asp:ListItem>Bow</asp:ListItem>
                                        <asp:ListItem>Offer</asp:ListItem>
                                    </asp:DropDownList></td></tr>
                           <tr><td>Rate:</td>
                                <td><asp:TextBox runat="server" ID="Textrate" CssClass="form-control" placeholder="Rate For Product"  Width="300px" MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Requiredrate" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textrate" ValidationGroup="valmemb" ErrorMessage="Rate Required "></asp:RequiredFieldValidator>
                                </td>
                                <td></td></tr>
                            

                       </table>
			            </div></blockquote>
                        <blockquote class="card-text" style="text-align:left">
                        <asp:Button  runat="server" ID="ButAdd" CssClass="btn btn-secondary" Text="Update" Width="300px" ValidationGroup="valmemb" OnClick="btnaddprod" OnClientClick="Update"  />			                    <%--<table>
                            <tr><td>
                                <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationGroup="valmemb" ErrorMessage="Email Required "></asp:RequiredFieldValidator>
                            </td><td>
                                <asp:RegularExpressionValidator ID="RegularUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="valmemb" ErrorMessage="Enter Valid Email address "></asp:RegularExpressionValidator>
                            </td></tr><tr><td>
                                <asp:RequiredFieldValidator ID="RequiredFullname" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textfullname" ValidationGroup="valmemb" ErrorMessage="Full Name Required "></asp:RequiredFieldValidator>
                            </td></tr><tr><td>
                                <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textaddress" ValidationGroup="valmemb" ErrorMessage="Address Required "></asp:RequiredFieldValidator>
                            </td><td>
                                <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textmobile" ValidationGroup="valmemb" ErrorMessage="Contact No Required "></asp:RequiredFieldValidator>
                            </td></tr>
                            <asp:Label ID="errorlbl" runat="server" Text="Label" Visible="false"></asp:Label>
                        </table>--%>
                        </blockquote>
                        <%--<table>
                            <tr><td>
                                <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationGroup="valmemb" ErrorMessage="Email Required "></asp:RequiredFieldValidator>
                            </td><td>
                                <asp:RegularExpressionValidator ID="RegularUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="valmemb" ErrorMessage="Enter Valid Email address "></asp:RegularExpressionValidator>
                            </td></tr><tr><td>
                                <asp:RequiredFieldValidator ID="RequiredFullname" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textfullname" ValidationGroup="valmemb" ErrorMessage="Full Name Required "></asp:RequiredFieldValidator>
                            </td></tr><tr><td>
                                <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textaddress" ValidationGroup="valmemb" ErrorMessage="Address Required "></asp:RequiredFieldValidator>
                            </td><td>
                                <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textmobile" ValidationGroup="valmemb" ErrorMessage="Contact No Required "></asp:RequiredFieldValidator>
                            </td></tr>
                            <asp:Label ID="errorlbl" runat="server" Text="Label" Visible="false"></asp:Label>
                        </table>--%>
                </form>
                    </fieldset></article>
                </div>
                <!-- Sidebar -->
                <aside class="col-sm-4">
                    <div class="sidebar-box">
                        <blockquote class="card-text"><h4>Image</h4></blockquote>
                           <table>
                           <tr><td>Image:</td>
                                <td><asp:Image ID="ImgSD" runat="server" Height="200px" Width="00px" /></td></tr>

                            </table>
                        </div></aside> 
            </div> 
        </main>

</asp:Content>

