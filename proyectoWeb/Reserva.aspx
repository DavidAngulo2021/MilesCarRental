<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reserva.aspx.cs" Inherits="proyectoWeb.Reserva" MasterPageFile="~/Site.Master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!-- Packages Start -->
 <div class="container-fluid py-5">
     <div class="container pt-5 pb-3">
         <div class="text-center mb-3 pb-3">
             <h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Miles Car Rental</h6>
             <h1>AutoMoviles Disponible</h1>
         </div>
         <div class="row">
             <div class="col-lg-4 col-md-6 mb-4">
                 <div class="package-item bg-white mb-2">
                     <img class="img-fluid" src="https://s1.1zoom.me/big0/959/Toyota_SW4__'Diamond_'_2021_White_Metallic_609019_1280x853.jpg" alt="">
                     <div class="p-4">
                         <div class="d-flex justify-content-between mb-3">
                             <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                             <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>5 Person</small>
                         </div>
                         <a class="h5 text-decoration-none" href="index">Toyota SW4 Diamond 2021</a>
                         <div class="border-top mt-4 pt-4">
                             <div class="d-flex justify-content-between">
                                 <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                 <h5 class="m-0">$300</h5>
                                  <asp:Button ID="btnGuardar" runat="server" Text="Reservar Ya" OnClick="btnGuardar_Click"/>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 mb-4">
                 <div class="package-item bg-white mb-2">
                     <img class="img-fluid" src="https://s1.1zoom.me/big0/88/Toyota_Camry_Red_White_background_540853_1280x905.jpg" alt="">
                     <div class="p-4">
                         <div class="d-flex justify-content-between mb-3">
                             <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>                            
                             <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>5 Person</small>
                         </div>
                         <a class="h5 text-decoration-none" href="">Toyota Camry Rojo</a>
                         <div class="border-top mt-4 pt-4">
                             <div class="d-flex justify-content-between">
                                 <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                 <h5 class="m-0">$400</h5>
                                  <asp:Button ID="Button2" runat="server" Text="Reservar Ya" OnClick="Button2_Click"/>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 mb-4">
                 <div class="package-item bg-white mb-2">
                     <img class="img-fluid" src="https://cdn.wheel-size.com/automobile/body/toyota-sw4-2015-2021-1676275445.1198947.jpg" alt="">
                     <div class="p-4">
                         <div class="d-flex justify-content-between mb-3">
                            <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                             <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>6 Person</small>
                         </div>
                         <a class="h5 text-decoration-none" href="">Toyota SW4 2016</a>
                         <div class="border-top mt-4 pt-4">
                             <div class="d-flex justify-content-between">
                                 <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                 <h5 class="m-0">$500</h5>
                                  <asp:Button ID="Button3" runat="server" Text="Reservar Ya" OnClick="Button3_Click"/>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 mb-4">
                 <div class="package-item bg-white mb-2">
                     <img class="img-fluid" src="https://s1.1zoom.me/b5349/962/KIA_Rio_Light_Blue_White_background_526267_3840x2160.jpg" alt="">
                     <div class="p-4">
                         <div class="d-flex justify-content-between mb-3">
                             <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                             <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>5 Person</small>
                         </div>
                         <a class="h5 text-decoration-none" href="">KIA Rio Celeste</a>
                         <div class="border-top mt-4 pt-4">
                             <div class="d-flex justify-content-between">
                                 <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                 <h5 class="m-0">$100</h5>
                                  <asp:Button ID="Button4" runat="server" Text="Reservar Ya" OnClick="Button4_Click"/>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 mb-4">
                 <div class="package-item bg-white mb-2">
                     <img class="img-fluid" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqiUtOmRDth0cBo6kGtW8XPagJXieS-ooB47Co8Q3zaw&s" alt="" style="width: 482px; height: 234px">
                     <div class="p-4">
                         <div class="d-flex justify-content-between mb-3">
                             <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                             <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>4 Personas</small>
                         </div>
                         <a class="h5 text-decoration-none" href="">KIA Force 2024</a>
                         <div class="border-top mt-4 pt-4">
                             <div class="d-flex justify-content-between">
                                 <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                 <h5 class="m-0">$250</h5>
                                  <asp:Button ID="Button5" runat="server" Text="Reservar Ya" OnClick="Button5_Click"/>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 mb-4">
                 <div class="package-item bg-white mb-2">
                     <img class="img-fluid" src="https://www.autofacil.es/wp-content/uploads/2020/11/renault-clio-limited-2021-4_g.jpg" alt="">
                     <div class="p-4">
                         <div class="d-flex justify-content-between mb-3">
                        
                             <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                             <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>4 Person</small>
                         </div>
                         <a class="h5 text-decoration-none" href="">Renault Clio 2021</a>
                         <div class="border-top mt-4 pt-4">
                             <div class="d-flex justify-content-between">
                                 <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                 <h5 class="m-0">$300</h5>
                                  <asp:Button ID="Button6" runat="server" Text="Reservar Ya" OnClick="Button6_Click"/>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <!-- Packages End -->


</asp:Content>
