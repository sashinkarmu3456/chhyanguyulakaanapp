<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Clientmaster.master" AutoEventWireup="true" CodeFile="ResetPwd.aspx.cs" Inherits="Client_ResetPwd" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentTitleUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyUs" Runat="Server">
    <section id="SectionLogin" class="about-section">
        <div class="card text-center">
            <div class="card-body">
                <blockquote class="card-text"><h2 style="text-align:left">Reset password</h2></blockquote>
                <fieldset>
                <legend></legend>
                <form id="Form3" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                    <div class="form-group" style="text-align:left">
                        <asp:Label for="Textemail" ID="Lblemail" runat="server">Email Address/Username</asp:Label>
                        <asp:TextBox runat="server" ID="Textemail" CssClass="form-control" type="email" Height="45px" Width="500px"></asp:TextBox>
			        </div>
                    </blockquote>
                    <blockquote>
                        <p><asp:Label runat="server" ID="errorlbl" ForeColor= "Red"></asp:Label></p>
                        <p style="text-align:left"><asp:Button  runat="server"  ID="Butpwdreset" CssClass="btn btn-primary" Text="Send Password" Width="350px" OnClientClick="resetpwd" OnClick="btnresetpwd" /></p>
			       </blockquote>			                    
                </form>
                </fieldset></div>
         </div>
    </section>
</asp:Content>

