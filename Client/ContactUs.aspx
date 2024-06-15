<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Clientmaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Client_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTitleUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyUs" Runat="Server">
    <!-- Start Contact Area -->
    <section id="SectionLogin" class="about-section">
        <div class="card text-center">
            <div class="card-body colored-bg-container">
                <blockquote class="card-text"><h2 style="text-align:left;color:white;">Contact</h2></blockquote>
                <fieldset>
                <legend></legend>
                <form id="Form3" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                    <div class="form-group" style="text-align:left; color:white;">
                        <asp:Label for="Textname" ID="lblname" runat="server">Your Name </asp:Label>                       
                        <asp:TextBox runat="server" ID="Textname" CssClass="form-control" Height="45px" Width="500px"></asp:TextBox>
			        </div>
                    <div class="form-group" style="text-align:left;color:white;">
                        <asp:Label for="Textemail" ID="Lblemail" runat="server">Email Address</asp:Label>
                        <asp:TextBox runat="server" ID="Textemail" CssClass="form-control" type="email" Height="45px" Width="500px"></asp:TextBox>
                        <small id="Small1" class="form-text" style="text-align:left;color:white;">Email will not be shared.</small>

			        </div>
			        <div class="form-group"style="text-align:left;color:white;">
                        <asp:Label ID="Labmsg" runat="server">Message</asp:Label>

                        <asp:TextBox runat="server" ID="Textmsg" CssClass="form-control" Width="500px" TextMode="MultiLine" Rows="4"></asp:TextBox>
			        </div></blockquote>
                    <blockquote>
                        <p><asp:Label runat="server" ID="errorlbl" ForeColor= "Red"></asp:Label></p>
                        <p style="text-align:left"><asp:Button  runat="server"  ID="Butsubmit" CssClass="btn btn-primary" Text="Submit" Width="350px" OnClick="Butcontact_Click"/></p>
			       </blockquote>			                    
                </form>
                </fieldset></div>
         </div>
    </section>
</asp:Content>


