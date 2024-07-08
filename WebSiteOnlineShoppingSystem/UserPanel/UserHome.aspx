<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserMaster.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserPanel_UserHome" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Slider Container -->
    <div id="slider">
       <div class="bxslider">
      <div class="slide" style="background-image:url(../images/slider1.jpg);"><%--<img src="images/slider1.jpg" />--%></div>  
       <div class="slide" style="background-image:url(../images/slider2.jpg);"><%--<img src="images/slider2.jpg" />--%></div>    
      <div class="slide" style="background-image:url(../images/slider3.jpg);"><%--<img src="images/slider3.jpg" />--%></div>
    </div>
    </div>
    <!--#END-->


    <section style="background-color:aqua;">
               <div class="active">
                   <h1 style="font-family:Arial; font-size:20px" align="center">Welcome In User Home page</h1>
                   <img src="../Uploaded_Image/download%20(1).jpg" float="right" height="250px" width="500px"/>
                   <p style="font-size:16px;">In Online Surfing And Shopping System user first of all Register and then login in our website then
                       the user access all items of website. 
                       An online shop evokes the physical analogy of buying products or services at a regular "bricks-and-mortar" retailer or shopping center;
             the process is called
             business-to-consumer online shopping. When an online store is set up to enable businesses to buy from another businesses, 
            the process
             is called business-to-businessm online shopping. A typical online store enables the customer to browse the firm's range of 
            products
             and services, view photos or images of the products, along with information about the product specifications, features and prices.
         User can buy  item from our website  there are many types of items available in our website.
                       when you select item from our website then check details from our order history and then payble with method 
                       after buy product user can see our order history from our website.

                   </p>

               </div>
   </section>
   

</asp:Content>

