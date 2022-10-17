<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workshop.aspx.cs" Inherits="_34316345_Assessment_2.Workshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('Properties/photo-1582266255765-fa5cf1a1d501.jpg')">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            width: 263px;
        }
        .auto-style3 {
            margin-left: 145px;
            color: #00FFFF;
            font-weight: bold;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            color: #00FFFF;
        }
        .auto-style6 {
            font-size: large;
            color: #00FFFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: xx-large">
            <strong><span class="auto-style4">Welcome</span>
            <asp:Label ID="lblUser" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </div>
        <p style="font-size: large">
            <strong><span class="auto-style5">Please indicate your preferred date for a programming workdshop below. </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogout" runat="server" CssClass="auto-style3" OnClick="btnLogout_Click" Text="Logout" Width="82px" BackColor="Red" Font-Bold="True" Font-Size="Large" />
            </strong></p>
        <p class="auto-style6">
            Here is your current date and selected programming language(if any):</p>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                    <asp:BoundField DataField="WorkshopDate" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date" />
                    <asp:BoundField DataField="Java" HeaderText="Java" />
                    <asp:BoundField DataField="CSharp" HeaderText="C#" />
                    <asp:BoundField DataField="CPP" HeaderText="C++" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </p>
    <p class="auto-style4">
        To indicate a new preffered date, choose one on the calendar below:</p>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="Aqua" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" Width="330px" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth">
                        <DayHeaderStyle ForeColor="#333333" Height="8pt" Font-Bold="True" Font-Size="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" BorderStyle="Solid" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>
                    <strong>
                    <asp:RadioButton ID="radBtnJava" runat="server" AutoPostBack="True" CssClass="auto-style4" GroupName="Languages" OnCheckedChanged="radBtnJava_CheckedChanged" Text="Java" />
                    </strong>
                    <br />
                    <br />
                    <strong>
                    <asp:RadioButton ID="radBtnCSharp" runat="server" AutoPostBack="True" CssClass="auto-style4" GroupName="Languages" OnCheckedChanged="radBtnJava_CheckedChanged" Text="C#" />
                    </strong>
                    <br />
                    <br />
                    <strong>
                    <asp:RadioButton ID="radBtnCPP" runat="server" AutoPostBack="True" CssClass="auto-style4" GroupName="Languages" OnCheckedChanged="radBtnJava_CheckedChanged" Text="C++" />
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                    <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm date" Width="95px" BackColor="Red" CssClass="auto-style5" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </p>
    </form>
    </body>
</html>
