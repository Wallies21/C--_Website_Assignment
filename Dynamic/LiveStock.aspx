<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LiveStock.aspx.cs" Inherits="Dynamic.LiveStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 615px;
            text-align: center;
            width: 1350px;
        }
        .auto-style12 {
            text-align: center;
            height: 73px;
            width: 1350px;
            position: absolute;
            top: 8px;
            left: 8px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 24px;
            left: 138px;
            z-index: 1;
            height: 27px;
            width: 119px;
        }
        .auto-style9 {
            position: absolute;
            top: 24px;
            left: 358px;
            z-index: 1;
            width: 54px;
        }
        .auto-style10 {
            position: absolute;
            top: 23px;
            left: 26px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 24px;
            left: 468px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 24px;
            left: 248px;
            z-index: 1;
            right: 1002px;
        }
        .auto-style14 {
            position: absolute;
            top: 36px;
            left: 1235px;
            z-index: 1;
        }
        .auto-style15 {
            width: 1350px;
            height: 74px;
            position: absolute;
            top: 552px;
            left: 8px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 26px;
            left: 36px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 25px;
            left: 1225px;
            z-index: 1;
            height: 25px;
        }
        .auto-style18 {
            position: absolute;
            top: 26px;
            left: 988px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 28px;
            left: 877px;
            z-index: 1;
            height: 19px;
        }
        .auto-style20 {
            position: absolute;
            top: 26px;
            left: 90px;
            z-index: 1;
            width: 186px;
        }
        .auto-style21 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 96px;
            left: 20px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 25px;
            left: 292px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 26px;
            left: 595px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 10px;
            left: 575px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 43px;
            left: 574px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-position: center center; background-image: url('Images/LivestockPage.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-color: #339933;">
            <div class="auto-style12" style="background-color: #FFCC66">
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" BorderColor="Black" CssClass="auto-style7" ForeColor="Black" PostBackUrl="~/Implement.aspx" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px">Implements</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style9" PostBackUrl="~/Workers.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Workers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style10" PostBackUrl="~/Main.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px" BorderStyle="Solid" BorderWidth="1px">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/GrainPage.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Grain</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" PostBackUrl="~/DataBase.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Database</asp:LinkButton>
                <asp:Label ID="lblLive" runat="server" CssClass="auto-style23"></asp:Label>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dynamic_FarmConnectionString %>" SelectCommand="SELECT * FROM [LiveStock]"></asp:SqlDataSource>
            <asp:GridView ID="gvLive" runat="server" BackColor="#CCCCCC" CssClass="auto-style21">
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Log Out" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px" />
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC66" CssClass="auto-style15">
                <asp:TextBox ID="txtSearchLive" runat="server" CssClass="auto-style20"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style16" Text="Search:"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style19" Text="Remove records:"></asp:Label>
                <asp:TextBox ID="txtDELLive" runat="server" CssClass="auto-style18" Width="225px"></asp:TextBox>
                <asp:Button ID="btnDELLive" runat="server" CssClass="auto-style17" Font-Bold="False" Font-Italic="True" Font-Names="Calibri" OnClick="btnDELLive_Click" Text="Delete" Height="25px" Width="100px" />
                <asp:Button ID="btnSearchLive" runat="server" CssClass="auto-style22" OnClick="btnSearchLive_Click" Text="Search" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
                <asp:Button ID="btnSortFeed" runat="server" CssClass="auto-style25" Font-Italic="True" Font-Names="Calibri" Height="25px" OnClick="btnSortFeed_Click" Text="Sort Feed Availability" Width="150px" />
                <asp:Button ID="btnSell" runat="server" CssClass="auto-style26" Font-Italic="True" Font-Names="Calibri" Height="25px" OnClick="btnSell_Click" Text="Sort Price" Width="150px" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
