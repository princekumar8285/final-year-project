<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="successpage.aspx.cs" Inherits="successpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:gold;" align="center">Payment Succss Full</h1>
    </div>
    <!--sectipn-->
    <section style="background-color:hotpink;">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="603px" AutoGenerateRows="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Card" HeaderText="Card" SortExpression="Card" />
                <asp:BoundField DataField="ShipingAddress" HeaderText="ShipingAddress" SortExpression="ShipingAddress" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Qnty" HeaderText="Qnty" SortExpression="Qnty" />
                <asp:BoundField DataField="DateofPurches" HeaderText="DateofPurches" SortExpression="DateofPurches" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT * FROM [OrderHistory] WHERE ([userid] = @userid) order by OrderId desc">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="windows.print();" Text="Print" />
    </div>
    </section>
    <!--#END-->
</asp:Content>

