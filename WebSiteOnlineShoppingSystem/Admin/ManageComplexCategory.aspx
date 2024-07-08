<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageComplexCategory.aspx.cs" Inherits="Admin_ManageComplexCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 180px;
        }
        .auto-style3 {
            width: 258px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style10 {
            width: 258px;
            height: 32px;
        }
        .auto-style11 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:fuchsia;" align="center">Select Category</h1>
    </div>
    <!--section-->
    <section style="background-color:limegreen;">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Complex Name:</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtComplexName" runat="server" Height="24px" Width="168px" BackColor="#FFFFCC" ForeColor="Red"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtComplexName" ErrorMessage="Enter Complex Name" ValidationGroup="complex"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Complex Details:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtComplexDetails" runat="server" Height="24px" Width="168px" BackColor="#FFFF99" ForeColor="#FF3300" OnTextChanged="txtComplexDetails_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtComplexDetails" ErrorMessage="Enter Complex Details" ValidationGroup="complex"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="BtnSubmit" runat="server" Height="32px" OnClick="BtnSubmit_Click" Text="Submit" Width="77px" ValidationGroup="complex" />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="ComplexName" HeaderText="ComplexName" SortExpression="ComplexName" />
                        <asp:BoundField DataField="ComplexDetails" HeaderText="ComplexDetails" SortExpression="ComplexDetails" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" DeleteCommand="DELETE FROM [tblComplexCategory] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblComplexCategory] ([ComplexName], [ComplexDetails]) VALUES (@ComplexName, @ComplexDetails)" SelectCommand="SELECT * FROM [tblComplexCategory]" UpdateCommand="UPDATE [tblComplexCategory] SET [ComplexName] = @ComplexName, [ComplexDetails] = @ComplexDetails WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ComplexName" Type="String" />
                        <asp:Parameter Name="ComplexDetails" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ComplexName" Type="String" />
                        <asp:Parameter Name="ComplexDetails" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
        </section>
        <!--#END-->
</asp:Content>

