<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="AdminReg.aspx.cs" Inherits="AdminReg" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyadm" Runat="Server">
     <%--Register--%>
    <section id="SectionLogin" class="about-section">
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text"><h2>Admin Register</h2></blockquote>
                <fieldset>
                <legend></legend>
                <form id="Form3" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                       <div class="form-group">
                       <table>
                            <tr>
                                <td>Username :</td>
                                <td><asp:TextBox runat="server" ID="Textuser" CssClass="form-control" placeholder="Enter Full Name"  Width="300px"></asp:TextBox></td>
                                <td><asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationGroup="valmemb" ErrorMessage="Email Required "></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="valmemb" ErrorMessage="Enter Valid Email address "></asp:RegularExpressionValidator></td>
                            </tr>
                    
 
                           <tr>
                            <td >Password : </td>
                                <td ><asp:TextBox runat="server" ID="Textpwd" CssClass="form-control" placeholder="Password" Width="300px" Wrap="False" Text="*Password is Your UserID" ReadOnly="true"></asp:TextBox></td>
                            <td></td></tr>
                            <tr>
                                <td>User Type : </td>
                                <td>
                                    <asp:DropDownList ID="Dropuser" runat="server" CssClass="form-control" Width="300px" Height="40px">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Manager</asp:ListItem>
                                    </asp:DropDownList>
                                    </td>
                            </tr>
                            <tr>
                                <td>Full Name :</td>
                                <td><asp:TextBox runat="server" ID="Textfullname" CssClass="form-control" placeholder="Enter Full Name"  Width="300px"></asp:TextBox></td>
                                <td> <asp:RequiredFieldValidator ID="RequiredFullname" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textfullname" ValidationGroup="valmemb" ErrorMessage="Full Name Required "></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>Address : </td>
                                <td><asp:TextBox runat="server" ID="Textaddress" CssClass="form-control" placeholder="Enter Full Address"  Width="300px"></asp:TextBox></td>
                                <td><asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textaddress" ValidationGroup="valmemb" ErrorMessage="Address Required "></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>Mobile : </td>
                                <td><asp:TextBox runat="server" ID="Textmobile" CssClass="form-control" placeholder="Enter Mobile Number"  Width="300px" MaxLength="10"></asp:TextBox></td>
                                <td> <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textmobile" ValidationGroup="valmemb" ErrorMessage="Contact No Required "></asp:RequiredFieldValidator></td>
                            </tr>
                           <asp:Label ID="errorlbl" runat="server" Text="Label" Visible="false"></asp:Label>
                        </table>
			            </div></blockquote>
                         <blockquote class="card-text" style="text-align:left">
                        <asp:Button  runat="server" ID="Butjoin" CssClass="btn btn-secondary" Text="Register" Width="350px" ValidationGroup="valmemb" OnClick="admin_join" />
                        </blockquote>        
                </form>
                </fieldset></div>
         </div>
    </section>
</asp:Content>

