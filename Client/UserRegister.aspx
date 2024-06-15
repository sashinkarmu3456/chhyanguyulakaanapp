<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Clientmaster.master" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="UserRegister" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyUs" Runat="Server">
    <section id="Sectioncontact" class="about-section">
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text"><h2 style="text-align:left">Memeber Join</h2></blockquote>
                <form id="Form1" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                       <div class="form-group">
                        <table>
                            <tr>
                                <td >Username : </td>
                                <td ><asp:TextBox runat="server" ID="Textuser" CssClass="form-control" placeholder="Enter your Email Address"  Width="300px" Wrap="False"></asp:TextBox></td><%--type="email"--%> <%--required="true"--%>
                                <td><asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationGroup="valmemb" ErrorMessage="Email Required "></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularUsername" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textuser" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="valmemb" ErrorMessage="Enter Valid Email address "></asp:RegularExpressionValidator></td>
                            </tr>
                            <tr>
                                <td >Password : </td>
                                <td ><asp:TextBox runat="server" ID="Textpwd" CssClass="form-control" placeholder="Password" type="password" Width="300px" Wrap="False" TextMode="Password"></asp:TextBox></td>
                            <td><asp:RequiredFieldValidator ID="RequiredPassword" ControlToValidate="Textpwd" ViewStateMode="Disabled" ForeColor="Red" runat="server" ErrorMessage="Password is Required." ValidationGroup="valmemb"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>Confirm Password: </td>
                                <td><asp:TextBox runat="server" ID="Textcpwd" CssClass="form-control" placeholder="Confirm Password" type="password" Width="300px" TextMode="Password"></asp:TextBox></td>
                            <td><asp:RequiredFieldValidator ID="RequiredCPassword" ControlToValidate="Textcpwd" ViewStateMode="Disabled" ForeColor="Red" runat="server" ErrorMessage="Confirm Password is Required." ValidationGroup="valmemb"></asp:RequiredFieldValidator><asp:CompareValidator ID="ComparePassword" ControlToCompare="Textpwd" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textcpwd" runat="server" ErrorMessage="Password Mismatch .... !" ValidationGroup="valmemb"></asp:CompareValidator></td>
                            </tr>
                            <tr>
                                <td>Full Name :</td>
                                <td><asp:TextBox runat="server" ID="Textfullname" CssClass="form-control" placeholder="Enter Full Name"  Width="300px"></asp:TextBox></td>
                                <td></td>
                           <td><asp:RequiredFieldValidator ID="RequiredFullname" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textfullname" ValidationGroup="valmemb" ErrorMessage="Full Name Required "></asp:RequiredFieldValidator></td>
                                 </tr>
                            <tr>
                                <td>Address : </td>
                                <td><asp:TextBox runat="server" ID="Textaddress" CssClass="form-control" placeholder="Enter Full Address"  Width="300px"></asp:TextBox></td>
                                <td></td>
                            <td><asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textaddress" ValidationGroup="valmemb" ErrorMessage="Address Required "></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>Mobile : </td>
                                <td><asp:TextBox runat="server" ID="Textmobile" CssClass="form-control" placeholder="Enter Mobile Number"  Width="300px" MaxLength="10" TextMode="Number" Wrap="False"></asp:TextBox></td>
                                <td><asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textmobile" ValidationGroup="valmemb" ErrorMessage="Contact No Required "></asp:RequiredFieldValidator>
                                    <%--<asp:RegularExpressionValidator ID="Regularmobile" runat="server" ErrorMessage="Enter Valid Mobile Number" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textmobile" ValidationGroup="valmemb"></asp:RegularExpressionValidator>--%>
                                    &nbsp;</td>
                            <td></td>
                            </tr>
                            <asp:Label ID="errorlbl" runat="server"></asp:Label>
                        </table>
			        </div></blockquote>
                    <blockquote class="card-text" style="text-align:left"> <asp:Button  runat="server" ID="Butjoin" CssClass="btn btn-secondary"  Text="Register" Height="50px" Width="500px" OnClick="Butjoin_Click" ValidationGroup="valmemb" /></blockquote>
                    </form>
            </div>
        </div>
    </section>
</asp:Content>