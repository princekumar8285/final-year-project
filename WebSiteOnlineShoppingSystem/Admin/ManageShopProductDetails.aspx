<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageShopProductDetails.aspx.cs" Inherits="Admin_ShopProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            width: 247px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 247px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
  <h1  style="background-color:turquoise;"align="center">Shop Product Details</h1>
    </div>


    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Select Shop Name</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="ShopName" DataValueField="Id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT [Id], [ShopName] FROM [tblShopCategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Shop Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="ProductName" DataValueField="Id">
                   

                    
                </asp:DropDownList>
                    
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT [ShopId], [Id], [ProductName] FROM [tblShopProductCategory] WHERE ([ShopId] = @ShopId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="ShopId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="26px" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name" ValidationGroup="prodetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">MarketPrice:</td>
            <td>
                <asp:TextBox ID="txtMarketPrice" runat="server" Height="26px" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMarketPrice" ErrorMessage="Enter Market Price" ValidationGroup="prodetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">DiscountPrice:</td>
            <td>
                <asp:TextBox ID="txtDiscountPrice" runat="server" Height="26px" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDiscountPrice" ErrorMessage="Enter Discount Price" ValidationGroup="prodetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">OurPrice:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtOurPrice" runat="server" Height="26px" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtOurPrice" ErrorMessage="Enter Our Price" ValidationGroup="prodetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description:</td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" Height="26px" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDescription" ErrorMessage="Enter Description" ValidationGroup="prodetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Quantity:</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server" Height="26px" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Enter Quantity" ValidationGroup="prodetails"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:Button ID="btnSubmit" runat="server" Height="34px" OnClick="btnSubmit_Click" Text="Submit" Width="91px" ValidationGroup="prodetails" />
                <asp:Label ID="lblMessage" runat="server" Text="lblMessage"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ShopProductId" HeaderText="ShopProductId" SortExpression="ShopProductId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="MarketPrice" HeaderText="MarketPrice" SortExpression="MarketPrice" />
                        <asp:BoundField DataField="DiscountPrice" HeaderText="DiscountPrice" SortExpression="DiscountPrice" />
                        <asp:BoundField DataField="OurPrice" HeaderText="OurPrice" SortExpression="OurPrice" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                           <asp:BoundField DataField="createdDate" HeaderText="CreatedDate" SortExpression="createdDate" />
                        <asp:TemplateField HeaderText="Image" SortExpression="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("Name") %>' ImageUrl='<%# Eval("Image") %>' Width="50px" Height="50px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" 
                      SelectCommand="SELECT [Id], [ShopProductId], [Name], [MarketPrice], [DiscountPrice], [OurPrice], [Description], [Image], [Quantity],[createdDate] FROM [tblShopProductDetials]" DeleteCommand="DELETE FROM [tblShopProductDetials] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblShopProductDetials] ([ShopProductId], [Name], [MarketPrice], [DiscountPrice], [OurPrice], [Description], [Image], [Quantity]) VALUES (@ShopProductId, @Name, @MarketPrice, @DiscountPrice, @OurPrice, @Description, @Image, @Quantity)" UpdateCommand="UPDATE [tblShopProductDetials] SET [ShopProductId] = @ShopProductId, [Name] = @Name, [MarketPrice] = @MarketPrice, [DiscountPrice] = @DiscountPrice, [OurPrice] = @OurPrice, [Description] = @Description, [Image] = @Image, [Quantity] = @Quantity WHERE [Id] = @Id">
                      <DeleteParameters>
                          <asp:Parameter Name="Id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="ShopProductId" Type="Int32" />
                          <asp:Parameter Name="Name" Type="String" />
                          <asp:Parameter Name="MarketPrice" Type="Decimal" />
                          <asp:Parameter Name="DiscountPrice" Type="Decimal" />
                          <asp:Parameter Name="OurPrice" Type="Decimal" />
                          <asp:Parameter Name="Description" Type="String" />
                          <asp:Parameter Name="Image" Type="String" />
                          <asp:Parameter Name="Quantity" Type="Decimal" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="ShopProductId" Type="Int32" />
                          <asp:Parameter Name="Name" Type="String" />
                          <asp:Parameter Name="MarketPrice" Type="Decimal" />
                          <asp:Parameter Name="DiscountPrice" Type="Decimal" />
                          <asp:Parameter Name="OurPrice" Type="Decimal" />
                          <asp:Parameter Name="Description" Type="String" />
                          <asp:Parameter Name="Image" Type="String" />
                          <asp:Parameter Name="Quantity" Type="Decimal" />
                          <asp:Parameter Name="Id" Type="Int32" />
                      </UpdateParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
       
</asp:Content>

