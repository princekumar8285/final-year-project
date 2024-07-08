<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="slider">
       <div class="bxslider">
      <div class="slide" style="background-image:url(./images/slider1.jpg);"/>  
       <div class="slide" style="background-image:url(./images/slider2.jpg);"/>   
      <div class="slide" style="background-image:url(./images/slider3.jpg);"/>
    </div>
    </div>
     <h2 style="color:maroon; text-align:center;">Welcome to Home Page</h2>
      <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("ImagePath") %>' Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ShopName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("Id","ShopProductDetails.aspx?sid={0}") %>' Text="ViewDetails" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" 
        SelectCommand="SELECT * FROM [tblShopCategory]"></asp:SqlDataSource>
        



</asp:Content>

