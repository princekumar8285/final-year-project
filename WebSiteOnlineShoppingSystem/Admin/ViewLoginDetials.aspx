<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewLoginDetials.aspx.cs" Inherits="Admin_ViewLoginDetials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:lavenderblush;" align="center">View Login Details</h1>
    </div>
    <!--section-->
    <section style="background-color:ActiveCaption;" align="center">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                <asp:BoundField DataField="LoginDate" HeaderText="LoginDate" SortExpression="LoginDate" />
                <asp:BoundField DataField="LoginTime" HeaderText="LoginTime" SortExpression="LoginTime" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT [Id], [User_Name], [LoginDate], [LoginTime] FROM [Login]"></asp:SqlDataSource>
    </div>
        </section>
    <!--#END-->
</asp:Content>

