<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_34316345_Assessment_2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('Properties/photo-1582266255765-fa5cf1a1d501.jpg')">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 69px;
        }
        .auto-style2 {
            margin-left: 10px;
        }
        .auto-style3 {
            color: #00CCFF;
        }
        .auto-style4 {
            color: #00FFFF;
        }
        .auto-style5 {
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: xx-large">
            <span class="auto-style3">Registration page</span><table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"><span class="auto-style4">Username:</span> </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="auto-style2" Width="156px"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" CssClass="auto-style4" ErrorMessage="!!"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style1"><span class="auto-style4">Password:</span> </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style2" TextMode="Password" Width="158px"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" CssClass="auto-style4" ErrorMessage="!!"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="height: 26px" Text="Register" Width="66px" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
