<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_34316345_Assessment_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('Properties/photo-1582266255765-fa5cf1a1d501.jpg')">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 85px;
        }
        .auto-style2 {
            width: 202px;
        }
        .auto-style3 {
            width: 173px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style7 {
            color: #00FFFF;
        }
        .auto-style8 {
            color: #CC0000;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style10 {
            width: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: x-large" class="auto-style5">
            <strong>Welcome to Login screen</strong></div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><span class="auto-style8"><strong>Username:</strong></span> </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtUserCheck" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="ValidateUsername" runat="server" ControlToValidate="txtUserCheck" CssClass="auto-style5" ErrorMessage="?"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style1"><span class="auto-style8"><strong>Password:</strong></span> </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtPasswordCheck" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="ValidatePassword" runat="server" ControlToValidate="txtPasswordCheck" CssClass="auto-style5" ErrorMessage="?"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="RememberCheckB" runat="server" Text="Remember me" CssClass="auto-style8" OnCheckedChanged="RememberCheckB_CheckedChanged" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="70px" />
                </td>
                <td>
                    <asp:Label ID="lblNotMatch" runat="server" CssClass="auto-style7"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" CssClass="auto-style9">Click here to register</asp:HyperLink>
        </p>
    </form>
</body>
</html>
