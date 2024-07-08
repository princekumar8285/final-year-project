<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageShopCategory.aspx.cs" Inherits="Admin_ManageShopCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style3 {
            width: 184px;
            font-size: x-large;
            color: #CC0000;
            text-align: center;
        }
        .auto-style4 {
            width: 184px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:mediumspringgreen;" align="center">Shop Category</h1>
    </div>
    <!--section-->
    <section style="background-color:wheat;" align="center">
   
    <table class="auto-style1" align="center">
        <tr>
            <td class="auto-style3"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Complex Id:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ComplexName" DataValueField="Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT [Id], [ComplexName] FROM [tblComplexCategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">ShopName:</td>
            <td>
                <asp:TextBox ID="txtShopName" runat="server" Height="24px" Width="164px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtShopName" ErrorMessage="Enter Shop Name" ValidationGroup="shop"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">ShowDetails</td>
            <td>
                <asp:TextBox ID="txtShowDetails" runat="server" Height="24px" Width="164px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtShowDetails" ErrorMessage="Enter Show Details" ValidationGroup="shop"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Shop Images</td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Submit" Width="81px" ValidationGroup="shop" />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="Id">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="ComplexId" HeaderText="ComplexId" SortExpression="ComplexId" />
                        <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                        <asp:BoundField DataField="ShowDetials" HeaderText="ShowDetials" SortExpression="ShowDetials" />
                        <asp:ImageField DataAlternateTextField="ImagePath" DataImageUrlField="ImagePath" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                            <ItemStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" DeleteCommand="DELETE FROM [tblShopCategory] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblShopCategory] ([ComplexId], [ShopName], [ShowDetials]) VALUES (@ComplexId, @ShopName, @ShowDetials)" SelectCommand="SELECT * FROM [tblShopCategory]" UpdateCommand="UPDATE [tblShopCategory] SET [ComplexId] = @ComplexId, [ShopName] = @ShopName, [ShowDetials] = @ShowDetials WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ComplexId" Type="Int32" />
                        <asp:Parameter Name="ShopName" Type="String" />
                        <asp:Parameter Name="ShowDetials" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ComplexId" Type="Int32" />
                        <asp:Parameter Name="ShopName" Type="String" />
                        <asp:Parameter Name="ShowDetials" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </section>
    <!--#END-->
</asp:Content>

