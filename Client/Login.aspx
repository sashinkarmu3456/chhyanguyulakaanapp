<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Clientmaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTitleUs" Runat="Server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyUs" Runat="Server">
   <section id="SectionLogin" class="about-section">
       
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text"><h2 style="text-align:left">Login</h2></blockquote>
                <form id="Form3" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                    <div class="form-group" style="text-align:left">
                        <asp:Label ID="lbluser" runat="server">Username</asp:Label>
                        <asp:TextBox runat="server" ID="Textuser" CssClass="form-username form-control" placeholder="Username@cyl.com" type="email" Height="45px" Width="500px"></asp:TextBox>
			        </div>
			        <div class="form-group" style="text-align:left">
                        <asp:Label ID="Labpwd" runat="server">Password</asp:Label>
                        <asp:TextBox runat="server" ID="Textpwd" CssClass="form-username form-control" placeholder="Password" type="password" Height="45px" Width="500px"></asp:TextBox>
			        </div></blockquote>
                    <blockquote>
                                    <p><asp:Label runat="server" ID="errorlbl" ForeColor= "Red"></asp:Label></p>
                                    <p style="text-align:left"><asp:Button  runat="server"  ID="ButLogin" CssClass="btn btn-success" Text="Login" Height="45px" OnClick="ButLogin_Click" Width="500px"/></p>
                                    <p style="text-align:left"><asp:Button  runat="server" ID="Butjoin" CssClass="btn btn-warning" Text="Sign Up" Height="45px" Width="500px" OnClick="Butjoin_Click"/></p>
                                    <p style="text-align:left"><asp:Button  runat="server" ID="ButForget" CssClass="btn btn-info" Text="Forgot password?" Height="45px" Width="500px" OnClick="Butreset_Click"/></p>
			       </blockquote>			                    
                   </form>
            </div>
         </div>
    </section>
</asp:Content>

