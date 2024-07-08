<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageShopProductCategory.aspx.cs" Inherits="Admin_ShopProductCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 241px;
            font-size: x-large;
        }
        .auto-style3 {
            width: 241px;
            font-size: x-large;
            color: #FF3300;
            text-align: center;
        }
        .auto-style4 {
            width: 241px;
            font-size: medium;
        }
        .auto-style5 {
            width: 241px;
            font-size: medium;
            height: 42px;
        }
        .auto-style6 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:turquoise;" align="center">ShopProductCategory</h1>
    </div>
    <!--section-->
    <section style="background-color:thistle">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Select Shop Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ShopName" DataValueField="Id">
                    <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT [Id], [ShopName] FROM [tblShopCategory]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">ProductName:</td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server" Height="25px" Width="158px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="Enter Product Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">ProductCategory:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtProductCategory" runat="server" Height="28px" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Product Category" ControlToValidate="txtProductCategory"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style4">ProductImage:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please Browse Image"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Height="34px" OnClick="BtnSubmit_Click" Text="Submit" Width="77px" />
                <asp:Label ID="lblMessage" runat="server" Text="lblMessage"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" DataSourceID="SqlDataSource1" DataKeyNames="Id" AllowPaging="True">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="ShopId" HeaderText="ShopId" SortExpression="ShopId" />
                        <asp:BoundField HeaderText="ProductName" DataField="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" SortExpression="ProductCategory" />
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ProductImage") %>' Tooltip='<%# Eval("ProductImage") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("ProductImage") %>' ImageUrl='<%# Eval("ProductImage") %>' Width="50px" Height="50px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" DeleteCommand="DELETE FROM [tblShopProductCategory] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblShopProductCategory] ([Id], [ShopId], [ProductName], [ProductCategory]) VALUES (@Id, @ShopId, @ProductName, @ProductCategory)" SelectCommand="SELECT * FROM [tblShopProductCategory]" UpdateCommand="UPDATE [tblShopProductCategory] SET [ShopId] = @ShopId, [ProductName] = @ProductName, [ProductCategory] = @ProductCategory WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="ShopId" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductCategory" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ShopId" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductCategory" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </section>
        <!--#END-->
</asp:Content>

