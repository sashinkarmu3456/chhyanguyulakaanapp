<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="Usermantinence.aspx.cs" Inherits="Usermantinence"  %>

<asp:Content ID="Content2" ContentPlaceHolderID="Contentheadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbodyadm" Runat="Server">
     
    <section id="SectionLogin" class="about-section">
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text"><h2>Modify User</h2></blockquote>
                <fieldset>
                <form id="Form3" runat="server" role="form" method="post" class="login-form">
                <legend></legend>
			       <blockquote class="card-text"> 
                       <div class="form-group">
                       <table>
                            <tr>
                                <td>User ID:</td>
                                <td><asp:TextBox runat="server" ID="TextID" CssClass="form-control" placeholder="Enter Full Name"  Width="300px" ReadOnly="True"></asp:TextBox></td>
                            </tr><tr>
                                <td>Username :</td>
                                <td><asp:TextBox runat="server" ID="Textuser" CssClass="form-control" placeholder="Enter Full Name"  Width="300px" ReadOnly="True"></asp:TextBox></td>
                                <td><asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationGroup="valmemb" ErrorMessage="Email Required "></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="valmemb" ErrorMessage="Enter Valid Email address "></asp:RegularExpressionValidator></td>
                            </tr><tr>
                                <td>Full Name :</td>
                                <td><asp:TextBox runat="server" ID="Textfullname" CssClass="form-control" placeholder="Enter Full Name"  Width="300px"></asp:TextBox></td>
                                <td> <asp:RequiredFieldValidator ID="RequiredFullname" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textfullname" ValidationGroup="valmemb" ErrorMessage="Full Name Required "></asp:RequiredFieldValidator></td>
                            </tr><tr>
                                <td>Address : </td>
                                <td><asp:TextBox runat="server" ID="Textaddress" CssClass="form-control" placeholder="Enter Full Address"  Width="300px"></asp:TextBox></td>
                                <td><asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textaddress" ValidationGroup="valmemb" ErrorMessage="Address Required "></asp:RequiredFieldValidator></td>
                            </tr><tr>
                                <td>Mobile : </td>
                                <td><asp:TextBox runat="server" ID="Textmobile" CssClass="form-control" placeholder="Enter Mobile Number"  Width="300px" MaxLength="10"></asp:TextBox></td>
                                <td> <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textmobile" ValidationGroup="valmemb" ErrorMessage="Contact No Required "></asp:RequiredFieldValidator></td>
                            </tr>
                           <asp:Label ID="errorlbl" runat="server" Text="Label" Visible="false"></asp:Label>
                        </table>
			            </div></blockquote>
                         <blockquote class="card-text" style="text-align:left">
                        <asp:Button  runat="server" ID="Butjoin" CssClass="btn btn-secondary" Text="Update" Width="350px" ValidationGroup="valmemb" OnClick="but_userupdate"  />
                        </blockquote>        
                </form>
                </fieldset></div>
         </div>
    </section>

</asp:Content>

