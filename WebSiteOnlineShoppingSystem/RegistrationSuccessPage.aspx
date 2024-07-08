<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationSuccessPage.aspx.cs" Inherits="RegistrationSuccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-720">
                <div class="heading" style="background: #5cb85c; display: flex; align-items: center; justify-content: space-between; margin-left: -20px; margin-right: -20px; box-shadow: 0 5px 10px -5px green; padding-left: 30px; padding-right: 30px;">
                    <h1 style="line-height: 50px; padding-left: 10px; color: white">Registration Successfull</h1>
                    <img src="Uploaded_Image/Logo.png" alt="" style="height: 50px;"/>
                </div>
                <img src="Uploaded_Image/Logo.png" />
                <main style="padding: 10px;" >
                    <p>
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </p>
                    <p style="text-align:center">
                        You have successfully registered, your user id and password given below.<br />
                        User Id: <asp:Label ID="lblUserid" runat="server"></asp:Label><br />
                        Password: <asp:Label ID="lblPassword" runat="server"></asp:Label>
                    </p>
                    <p style="text-align:center">
                        <a href="Login.aspx" target="_blank" style="background: #f77b00; text-decoration: none; color: white; font-weight: 700; padding: 20px; min-width: 220px; display: inline-block; text-align: center; border-radius: 8px; box-shadow: 0 5px 5px -3px rgba(247, 123, 0, 0.6588235294117647); font-size: 1.4em;">Click here to Login
                        </a>
                    </p>
                </main>
            </div>
        </div>
    </form>
</body>
</html>
