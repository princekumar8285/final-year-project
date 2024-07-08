<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="UserPanel_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="background-color:lightgreen;font-family:Adobe Heiti 'Hobo Std';" align="center">Change Password</h1>
    </div>
    <!--Section-->

    <section style="background-color:yellow;">
    
    <table class="tbl" align="center">
    <tr>
        <td class="tblhead">
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style9">
                <tr>
                    <td>
                        Enter Old Pasword</td>
                    <td>
                        <asp:TextBox ID="txtpassold" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter New Password :</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Confirm-Password:</td>
                    <td>
                        <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                            ErrorMessage=" Password Not same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="btn" onclick="Button2_Click" 
                            Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
        </section>
    <!--#END-->
        
</asp:Content>

