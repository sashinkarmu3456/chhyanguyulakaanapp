<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Clientmaster.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Client_Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTitleUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeadUs" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBodyUs" Runat="Server">
    <!-- Main content area -->
        <div class="container">
            <div class="row">
                <!-- Sidebar -->
                <aside class="col-md-4">
                    <div class="sidebar-box">
                        <blockquote class="card-text"><h4>Select A Table & Book Now</h4></blockquote>
                        <div class="list-group list-group-root">
                            <fieldset>
                <legend></legend>
                <form id="Form1" runat="server" role="form" method="post" class="login-form">
			       <blockquote class="card-text"> 
                    <div class="form-group" style="text-align:left">
                        <asp:Label for="Textname" ID="Label1" runat="server">Name</asp:Label>                       
                        <asp:TextBox runat="server" ID="Textfname" CssClass="form-control" Height="45px" Width="350px"></asp:TextBox>

                        <asp:Label for="Textemail" ID="Label2" runat="server">Email</asp:Label>
                        <asp:TextBox runat="server" ID="Textemail" CssClass="form-control" type="email" Height="45px" Width="350px"></asp:TextBox>
                        
                        <asp:Label ID="Label5" runat="server">Mobile</asp:Label>
                        <asp:TextBox runat="server" ID="Textmobile" CssClass="form-control" TextMode="Number"  Width="350px"></asp:TextBox>

                        <asp:Label ID="Label3" runat="server">Date</asp:Label>
                        <asp:TextBox runat="server" ID="Textdate" CssClass="form-control" TextMode="Date"  Width="350px"></asp:TextBox>
                        
                        <asp:Label ID="Label6" runat="server">Time</asp:Label>
                        <asp:DropDownList ID="Droptime" runat="server" CssClass="form-control" Width="300px" Height="40px">
                            <asp:ListItem>15:00</asp:ListItem>
                            <asp:ListItem>16:00</asp:ListItem>
                            <asp:ListItem>17:00</asp:ListItem>
                            <asp:ListItem>18:00</asp:ListItem>
                            <asp:ListItem>19:00</asp:ListItem>
                            <asp:ListItem>20:00</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label7" runat="server">Table</asp:Label>
                        <asp:DropDownList ID="Droptable" runat="server" CssClass="form-control" Width="300px" Height="40px">
                            <asp:ListItem>T1</asp:ListItem>
                            <asp:ListItem>T2</asp:ListItem>
                            <asp:ListItem>T3</asp:ListItem>
                            <asp:ListItem>T4</asp:ListItem>
                            <asp:ListItem>T5</asp:ListItem>
                            <asp:ListItem>T6</asp:ListItem>
                            <asp:ListItem>T7</asp:ListItem>
                            <asp:ListItem>T8</asp:ListItem>
                        </asp:DropDownList>
			        </div></blockquote>
                    <blockquote>
                        <p><asp:Label runat="server" ID="errorlbl" ForeColor= "Red"></asp:Label></p>
                        <p style="text-align:left"><asp:Button  runat="server"  ID="Butreserve" CssClass="btn btn-primary" Text="Book Now" Height="45px" Width="350px" OnClick="Butreserve_Click"/></p>
			       </blockquote>			                    
                </form>
                </fieldset>
                </div></div>
                </aside> 
                
                <!-- Main content -->
                <div class="col-md-8">
                    <article>
                        <h2 class="article-title">MAKE A RESERVATION</h2>
                        <p class="article-meta"></p>
                        <p><img src="../img/floorplan.png"/></p>	
                        <p>* Reservation is Available Everyday From 15:00 TO 20:00</p>
                        <p>* Reservation Will Have No Time limit And Valid Upto 21:00</p>
                        <p>* Kitchen Closed at 21:00 No order Will be Taken After 20:30</p>
                    </article></div>
                </div>
          </div>
</asp:Content>

