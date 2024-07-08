<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #808080;
            background-color: #808000;
        }
        .auto-style2 {
            width: 384px;
        }
        .auto-style3 {
            width: 384px;
            height: 54px;
        }
        .auto-style4 {
            height: 54px;
        }
        .auto-style5 {
            width: 384px;
            height: 36px;
        }
        .auto-style6 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:peru;" align="center"> Change Your Password</h1>
    </div>

    <!--section-->
    <section style="background-color:indianred;">
    <table cellpadding="2" class="auto-style1">
        <tr>
            <td class="auto-style2">  </td>
            <td>  </td>
        </tr>
        <tr>
            <td class="auto-style2">UserName:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" style="height: 22px" Width="198px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="lblMessage"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Button ID="btnForget" runat="server" BackColor="Red" BorderColor="#FFFF66" ForeColor="White" OnClick="btnForget_Click" Text="ForgetYourPassword" />
            </td>
        </tr>
    </table>
    </section>
    <!--#END-->


</asp:Content>

