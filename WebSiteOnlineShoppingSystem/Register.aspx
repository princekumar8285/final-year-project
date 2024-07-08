<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 613px;
        }

        .auto-style2 {
            width: 259px;
        }

        .auto-style3 {
            width: 259px;
            height: 53px;
        }

        .auto-style4 {
            height: 53px;
            width: 847px;
        }

        .auto-style5 {
            width: 847px;
        }        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <div>
        <h2 style="color: brown;" align="center" style="height: 32px">Welcome To Registration Form</h2>
    </div>
    <div>

        <table cellpadding="11" cellspacing="8" class="auto-style1" bgcolor="#12345" align="center">
            <tr>
                <td class="auto-style2">First Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFirstName" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">LastName:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLastName" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">EmailId:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmailId" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmailId" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ConfirmPassword:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPassword" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAddress" class="form-group" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PhoneNumber:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPhoneNumber" class="form-group" MaxLength="10" runat="server" Height="33px" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhoneNumber" ForeColor="Red" ErrorMessage="Field Must Be Fill Out"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender:</td>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" Checked="true" runat="server" GroupName="Gender" Text="Male" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Checked="false" GroupName="Gender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblMessage" runat="server" Enabled="False"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnRegistration" runat="server" Height="40px" OnClick="btnRegistration_Click" Text="Registration" Width="116px" BackColor="#996600" ForeColor="White" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" Height="35px" OnClick="btnReset_Click" Text="Reset" Width="68px" BackColor="#333300" ForeColor="White" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

