<%@ Page Title="" Language="C#" MasterPageFile="~/Menu/CartMasterMenu.master" AutoEventWireup="true" CodeFile="~/Menu/AllProduct.aspx.cs" Inherits="Menu_AllProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMenuhead" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMenu" Runat="Server">
   <section id="SectionGFCMenu" class="about-section">
      <div class="card text-center">
         <div class="card-body colored-bg-container">
            <blockquote class="card-text" style="text-align:left;background: rgba(0, 0, 0, 0.7);">
               <h2 style="color:white;">Offers & Discounts</h2>
            </blockquote>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoedbcon %>" SelectCommand="SELECT * FROM [tblProduct] where Pro_Category = 'Offer'"></asp:SqlDataSource>
            <div class="row mb-5">
               <asp:DataList ID="DataFeature" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataFeature_ItemCommand">
                  <ItemTemplate>
                     <div class="col-lg-12 mb-4" data-aos="fade-up">
                        <div class="block-4 text-center border">
                           <figure class="block-4-image">
                              <asp:Image ID="Image1" runat="server" class="img-fluid" ImageUrl='<%# Eval("Pro_Thumb") %>' Height="600px" Width="1200px" AlternateText="Image placeholder" />
                           </figure>
                           <div class="block-4-text p-4" style="background: rgba(0, 0, 0, 0.7); backdrop-filter: blur(10px); border-radius: 10px;">
                              <h3>
                                 <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Pro_ID") %>' CommandName="ViewDetail" Text='<%# Eval("Pro_Name") %>' style="color: white;"></asp:LinkButton>
                              </h3>
                              <p class="mb-0"><asp:Label ID="Label3" runat="server" Text='<%# Eval("Pro_Desc") %>' style="color: white;"></asp:Label></p>
                              <p class="font-weight-bold text-white">NRs. <asp:Label ID="Label4" runat="server" Text='<%# Eval("Pro_Rate") %>' style="color: white;"></asp:Label></p>
                              <p>
                                 <asp:Label ID="Label8" runat="server" Text="Quantity" style="color: white;"></asp:Label>
                                 <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="47px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                 </asp:DropDownList>
                              </p>
                              <p>
                                 <asp:Button ID="ButDetail" runat="server" CommandArgument='<%# Eval("Pro_ID") %>' CommandName="ViewDetail" CssClass="btn btn-secondary" Text="View Detail" />
                                 <asp:Button ID="ButCart" runat="server" CommandArgument='<%# Eval("Pro_ID") %>' CommandName="Addtocart" CssClass="btn btn-primary" Text="Add To Cart" />
                              </p>
                           </div>
                        </div>
                     </div>
                  </ItemTemplate>
               </asp:DataList>
            </div>
         </div>
      </div>
   </section>
   <footer class="footer"> 
      <div class="footer-bottom">
         <p class="text-center"><a href="#">Back to top</a></p>
      </div>
   </footer>
</asp:Content>
