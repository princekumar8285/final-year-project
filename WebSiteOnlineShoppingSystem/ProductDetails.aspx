<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="UserPanel_ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4">
        <ItemTemplate>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("Image") %>' Width="237px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="27px" PostBackUrl='<%# Eval("Id","BuyProduct.aspx?pid={0}") %>' Text="ViewDetails" Width="65px" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT * FROM [tblShopProductDetials] WHERE ([ShopProductId] = @sid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="sid" QueryStringField="sid" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>

</asp:Content>

