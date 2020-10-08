<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Dynamic.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 615px;
            width: 1350px;
            position: absolute;
            top: 15px;
            left: 10px;
            z-index: 1;
        }
        .auto-style6 {
            width: 1349px;
            height: 72px;
            position: absolute;
            top: 545px;
            left: 0px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 24px;
            z-index: 1;
            height: 27px;
            width: 119px;
            right: 1109px;
        }
        .auto-style8 {
            position: absolute;
            top: 24px;
            left: 251px;
            z-index: 1;
            right: 999px;
        }
        .auto-style9 {
            position: absolute;
            top: 24px;
            left: 361px;
            z-index: 1;
            width: 54px;
            right: 889px;
        }
        .auto-style10 {
            position: absolute;
            top: 24px;
            left: 31px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 24px;
            left: 471px;
            z-index: 1;
            bottom: 566px;
        }
        .auto-style12 {
            text-align: center;
            height: 73px;
        }
        .auto-style13 {
            position: absolute;
            top: 27px;
            left: 1210px;
            z-index: 1;
            margin-bottom: 1px;
        }
        .auto-style14 {
            position: absolute;
            top: 561px;
            left: 15px;
            z-index: 1;
        }
        .auto-style15 {
            width: 259px;
            height: 188px;
            position: absolute;
            top: 153px;
            left: 849px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 378px;
            left: 895px;
            z-index: 1;
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Images/190787.jpg'); background-repeat: inherit; background-attachment: fixed;">
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC66" CssClass="auto-style6">
            </asp:Panel>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style13" OnClick="Button2_Click" Text="Log Out" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
            <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style14" Text="Label" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Size="XX-Large"></asp:Label>
                <div class="auto-style12" style="background-color: #FFCC66">
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" BorderColor="Black" CssClass="auto-style7" ForeColor="Black" PostBackUrl="~/LiveStock.aspx" Font-Underline="False" Height="25px" Width="100px">Livestock</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style9" PostBackUrl="~/Workers.aspx" BackColor="#CCCCCC" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Workers</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" CssClass="auto-style10" PostBackUrl="~/Implement.aspx" BackColor="#CCCCCC" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Implements</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" PostBackUrl="~/DataBase.aspx" BackColor="#CCCCCC" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Database</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/GrainPage.aspx" BackColor="#CCCCCC" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Grain</asp:LinkButton>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#00CC66" CssClass="auto-style15" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    <asp:Label ID="lblDate" runat="server" BorderColor="Yellow" CssClass="auto-style17" Font-Italic="True" Font-Names="Calibri" ForeColor="#FF3300"></asp:Label>
                </div>
        </div>
    </form>
</body>
</html>
