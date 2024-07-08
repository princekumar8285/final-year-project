<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div>
       <h1 style="background-color:chartreuse;" align="center">Welcome In ContactUs From</h1>
   </div>
    
   <!--section-->
    <section style="background-color:crimson;">
    <table border = "0" style="width: 409px" align="center" bgcolor="darkgray">

    <tr>

        <td>

            <asp:Label ID="Label1" runat="server" Text="Name*"></asp:Label><br />

        </td>

        <td>

            <asp:TextBox ID="txtName" runat="server" ValidationGroup = "contact"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*"

             ControlToValidate = "txtName"></asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>

        <td>

            <asp:Label ID="Label2" runat="server" Text="Subject*"></asp:Label><br />

        </td>

        <td>

            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="*"

             ControlToValidate = "txtSubject"></asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>

        <td>

            <asp:Label ID="Label3" runat="server" Text="Email*"></asp:Label><br />

        </td>

        <td>

            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />

            <asp:RegularExpressionValidator id="valRegEx" ForeColor="Red" runat="server"

            ControlToValidate="txtEmail"

            ValidationExpression=".*@.*\..*"

            ErrorMessage="*Invalid Email address."

            display="dynamic">

            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"

            ControlToValidate = "txtEmail"></asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>

        <td valign = "top" >

            <asp:Label ID="Label4" runat="server" Text="Body*"></asp:Label>

        </td>

        <td>

            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" ></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="*"

            ControlToValidate = "txtBody"></asp:RequiredFieldValidator>

        </td>

    </tr>

     <tr>

        <td></td>

        <td>

            <asp:FileUpload ID="FileUpload1" runat="server" />

       </td>

    </tr>

    <tr>

        <td></td>

        <td>

            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />

       </td>

    </tr>

    <tr>

        <td></td>

        <td>

            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor = "Green"></asp:Label>

       </td>

    </tr>

</table>
        </section>
    <!--#END-->
</asp:Content>

