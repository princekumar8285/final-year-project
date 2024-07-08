<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserMaster.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="UserPanel_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <h1 style="background-color:blueviolet;" align="center">View Order Details</h1>
    </div>
    <!--section-->
    <section style="background-color:seagreen;">
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" align="center" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Card" HeaderText="Card" SortExpression="Card" />
                <asp:BoundField DataField="ShipingAddress" HeaderText="ShipingAddress" SortExpression="ShipingAddress" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Qnty" HeaderText="Qnty" SortExpression="Qnty" />
                <asp:BoundField DataField="DateofPurches" HeaderText="DateofPurches" SortExpression="DateofPurches" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MD %>" SelectCommand="SELECT * FROM [OrderHistory] WHERE ([userid] = @userid)">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    </section>
    <!--#END-->
</asp:Content>

