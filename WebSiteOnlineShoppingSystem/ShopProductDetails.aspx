<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ShopProductDetails.aspx.cs" Inherits="UserPanel_ShopProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl='<%# Eval("ProductImage") %>' Width="222px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("Id","ProductDetails.aspx?sid={0}") %>' Text="ViewDetails" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>




    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>"
         SelectCommand="SELECT * FROM [tblShopProductCategory] WHERE ([ShopId] = @ShopId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ShopId" QueryStringField="sid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

