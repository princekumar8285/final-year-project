<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="PaymentGateway.aspx.cs" Inherits="UserPanel_PaymentGateway" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1  style="background-color:sienna;" align="center">Payment gateway</h1>
    </div>
    <!--section-->
    <section style="background-color:oldlace;">
    <table class="auto-style1" align="center">
        <tr>
            <td>Select Card Type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Credit</asp:ListItem>
                    <asp:ListItem>Dabit</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Enter Card Holder Name</td>
            <td>
                <asp:TextBox ID="TextBoxCardHolderName" runat="server" Height="21px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Enter Card No</td>
            <td>
                <asp:TextBox ID="TextBoxCardNo" runat="server" Height="21px" OnTextChanged="TextBox2_TextChanged" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CVV</td>
            <td>
                <asp:TextBox ID="TextBoxCVV" runat="server" Height="21px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Expiry Date</td>
            <td>
                <asp:TextBox ID="TextBoxExpiry" runat="server" Height="21px" Width="295px"></asp:TextBox>
                DD/MM</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="TextBoxPassword" runat="server" Height="21px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Amount</td>
            <td>
                <asp:TextBox ID="TextBoxAmount" runat="server" Enabled="False" Height="21px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Product Id</td>
            <td>
                <asp:TextBox ID="TextBoxProductId" runat="server" Enabled="False" Height="21px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>ShipIng Address</td>
            <td>
                <asp:TextBox ID="TextBoxShipIngAddress" runat="server" Height="77px" TextMode="MultiLine" Width="361px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#009900" Font-Bold="True" ForeColor="#CCCC00" Height="31px" OnClick="Button1_Click" Text="Pay Now" Width="88px" />
            </td>
        </tr>
    </table>
        </section>
    <!--#END-->
</asp:Content>

