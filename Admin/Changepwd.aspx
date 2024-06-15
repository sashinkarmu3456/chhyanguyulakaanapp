<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="Changepwd.aspx.cs" Inherits="Changepwd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadadm" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyadm" Runat="Server">
     <section id="Sectioncontact" class="about-section">
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text"><h2>Change Password</h2></blockquote>
                <form id="Form1" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                       <div class="form-group">
                        <table>
                            <tr>
                                <td >Username : </td>
                                <td ><asp:TextBox runat="server" ID="Textuser" CssClass="form-username form-control" placeholder="Enter your Email Address" type="email" Width="300px" Wrap="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td >Password : </td>
                                <td ><asp:TextBox runat="server" ID="Textpwd" CssClass="form-username form-control" placeholder="Password" type="password" Width="300px" Wrap="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Confirm Password: </td>
                                <td class="auto-style9"><asp:TextBox runat="server" ID="Textcpwd" CssClass="form-username form-control" placeholder="Confirm Password" type="password" Width="300px"></asp:TextBox></td>
                            </tr>
                        </table>
			        </div></blockquote>
                    <blockquote class="card-text" style="text-align:left"> <asp:Button  runat="server" ID="Butchange" CssClass="btn btn-secondary"  Text="Register" Height="50px" Width="500px" ValidationGroup="valmemb" OnClick="btn_changepwd" /></blockquote>
                        <table>
                            <tr><td>
                                <asp:RequiredFieldValidator ID="RequiredPassword" ControlToValidate="Textpwd" ViewStateMode="Disabled" ForeColor="Red" runat="server" ErrorMessage="Password is Required." ValidationGroup="valmemb"></asp:RequiredFieldValidator>
                            </td><td>
                                <asp:RequiredFieldValidator ID="RequiredCPassword" ControlToValidate="Textcpwd" ViewStateMode="Disabled" ForeColor="Red" runat="server" ErrorMessage="Confirm Password is Required." ValidationGroup="valmemb"></asp:RequiredFieldValidator>
                            </td></tr><tr><td>
                                <asp:CompareValidator ID="ComparePassword" ControlToCompare="Textpwd" ViewStateMode="Disabled" ForeColor="Red" ControlToValidate="Textcpwd" runat="server" ErrorMessage="Password Mismatch .... !" ValidationGroup="valmemb"></asp:CompareValidator>
                            </td></tr>
                            <asp:Label ID="errorlbl" runat="server" Text="Label" Visible="false"></asp:Label>
                        </table>
                    </form>
            </div>
        </div>
    </section>
   
</asp:Content>

