<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="BuyProduct.aspx.cs" Inherits="UserPanel_BuyProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="64px" Width="608px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:TemplateField SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="578px" Height="254px" />
                   <%-- <asp:Label ID="Label1" runat="server" Text='<%# Bind("Image") %>'></asp:Label>--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ShopProductId" HeaderText="Product Id" SortExpression="ShopProductId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:TemplateField HeaderText="MarketPrice" SortExpression="MarketPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MarketPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MarketPrice") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <strike><asp:Label ID="Label2" runat="server" Text='<%# Bind("MarketPrice") %>'></asp:Label></strike>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DiscountPrice" SortExpression="DiscountPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DiscountPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DiscountPrice") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                   <strike><asp:Label ID="Label3" runat="server" Text='<%# Bind("DiscountPrice") %>'></asp:Label></strike>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="OurPrice" HeaderText="OurPrice" SortExpression="OurPrice" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" PostBackUrl='<%# Eval("Id","PaymentGateway.aspx?pid={0}") %>' CommandName="" Text="BuyNow"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT * FROM [tblShopProductDetials] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="pid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

