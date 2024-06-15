<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDash.master" AutoEventWireup="true" CodeFile="AdminCP.aspx.cs" Inherits="Admin_AdminCP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentheadadm" Runat="Server">
    <link rel="stylesheet" href="../css/allstyle.css"/>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbodyadm" Runat="Server">
  <!-- Main content area -->
        <div class="container">
            <div class="row">
                <!-- Sidebar -->
                <aside class="col-md-4">
                    <div class="sidebar-box">
                        <blockquote class="card-text"><h4>Administrator</h4></blockquote>
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
                        <p><asp:Label runat="server" ID="Label4" ForeColor= "Red"></asp:Label></p>
                        <p style="text-align:left"><asp:Button  runat="server"  ID="Butreserve" CssClass="btn btn-primary" Text="Book Now" Height="45px" Width="350px"/></p>
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
                        <p><img src="../img/floorplan.png" /></p>	
                        <p>Reservation is Available Everyday From 15:00 TO 20:00</p>
                    </article></div>
                </div>
          </div>
</asp:Content>

