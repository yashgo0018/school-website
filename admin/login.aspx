<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" class="favicon" runat="server" id="favicon"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
    
    <main>
        <center>
            <section>
                <div class="header">Login</div>
                <table>
                    <tr>
                        <td>Username</td>
                        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color:Red; font-weight:bold; font-size: medium; background-color: Yellow;"><asp:label runat="server" ID="label1"></asp:label></td>
                    </tr>
                    <tr>
                        <td colspan="2"><asp:CheckBox runat="server" ID="RememberMe" Text="Remember Me" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" ><asp:Button ID="Button1" runat="server" Text="Login" 
                                onclick="Button1_Click"></asp:Button></td>
                    </tr>
                </table>
            </section>
        </center>
    </main>
    </div>
    </form>
</body>
</html>
