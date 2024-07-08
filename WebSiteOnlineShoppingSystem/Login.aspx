<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 412px;
            height: 306px;
        }
        .auto-style3 {
            height: 70px;
            width: 186px;
        }
        .auto-style6 {
            width: 186px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            height: 70px;
            width: 93px;
        }
        .auto-style9 {
            width: 93px;
        }
        .auto-style10 {
            color: #FF0000;
        }
        .dd {
            background-color: #edf0f2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" ><strong><span class="auto-style7"><span class="auto-style10">Welcome In LogIn Form</span></span></strong></div>
    <div style="background-image:url(images/slider2.jpg)">
        <table cellpadding="12" cellspacing="8" class="auto-style1" bgcolor="#155298" align="center">
        <tr>
            <td class="auto-style8">UserName:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="165px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Must be fil Out"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Password:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="161px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Your Password" />
            </td>
            <td >
                <asp:HyperLink ID="HyperLink1" CssClass="dd" runat="server" NavigateUrl="~/ForgetPassword.aspx">ForgetYourPassword?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="lbl1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Login" Width="114px" OnClick="Button1_Click" BackColor="#06224a" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" CssClass="dd" runat="server" PostBackUrl="~/Register.aspx">New Registration</asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
    
</asp:Content>

