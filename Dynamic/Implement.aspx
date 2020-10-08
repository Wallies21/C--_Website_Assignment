<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Implement.aspx.cs" Inherits="Dynamic.Implement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 615px;
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
            top: 23px;
            left: 147px;
            z-index: 1;
            height: 27px;
            width: 119px;
        }
        .auto-style9 {
            position: absolute;
            top: 23px;
            left: 367px;
            z-index: 1;
            width: 54px;
        }
        .auto-style10 {
            position: absolute;
            top: 22px;
            left: 35px;
            z-index: 1;
            right: 1258px;
            margin-bottom: 0px;
        }
        .auto-style11 {
            position: absolute;
            top: 23px;
            left: 477px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 23px;
            left: 257px;
            z-index: 1;
            right: 1038px;
        }
        .auto-style14 {
            position: absolute;
            top: 42px;
            left: 1229px;
            z-index: 1;
        }
        .auto-style15 {
            width: 1350px;
            height: 76px;
            position: absolute;
            top: 547px;
            left: 8px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 27px;
            left: 1221px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 28px;
            left: 980px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 29px;
            left: 848px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 27px;
            left: 81px;
            z-index: 1;
            width: 207px;
        }
        .auto-style20 {
            position: absolute;
            top: 29px;
            left: 28px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 26px;
            left: 303px;
            z-index: 1;
            right: 947px;
        }
        .auto-style22 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 146px;
            left: 46px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 23px;
            left: 595px;
            z-index: 1;
            height: 22px;
        }
        .auto-style25 {
            position: absolute;
            top: 11px;
            left: 605px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 40px;
            left: 605px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 24px;
            left: 825px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-position: center; background-image: url('Images/Implements.jpg'); background-attachment: fixed; background-repeat: no-repeat; background-color: #996633;">
            <div class="auto-style12" style="background-color: #FFCC66">
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" BorderColor="Black" CssClass="auto-style7" ForeColor="Black" PostBackUrl="~/LiveStock.aspx" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px">Livestock</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style10" PostBackUrl="~/Main.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px" BorderStyle="Solid" BorderWidth="1px">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" PostBackUrl="~/DataBase.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Database</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/GrainPage.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Grain</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style9" PostBackUrl="~/Workers.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Workers</asp:LinkButton>
                <asp:Label ID="lblImp" runat="server" CssClass="auto-style23"></asp:Label>
                <asp:Label ID="lblDate" runat="server" CssClass="auto-style27"></asp:Label>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dynamic_FarmConnectionString %>" SelectCommand="SELECT * FROM [Implements]"></asp:SqlDataSource>
            <asp:GridView ID="gvImp" runat="server" BackColor="#CCCCCC" CssClass="auto-style22">
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Log Out" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px" />
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" CssClass="auto-style15">
                <asp:Label ID="Label2" runat="server" Text="Search:" CssClass="auto-style20"></asp:Label>
                <asp:TextBox ID="txtSearchImp" runat="server" CssClass="auto-style19"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text="Remove Implement:"></asp:Label>
                <asp:TextBox ID="txtDELimp" runat="server" CssClass="auto-style17" Width="226px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Font-Italic="True" Font-Names="Calibri" OnClick="Button2_Click" Text="Delete" Height="25px" Width="100px" />
                <asp:Button ID="btnSearchImp" runat="server" CssClass="auto-style21" OnClick="btnSearchImp_Click" Text="Search" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
                <asp:Button ID="btnCon" runat="server" CssClass="auto-style25" Font-Italic="True" Font-Names="Calibri" Height="25px" OnClick="btnCon_Click" Text="Sort Condition" Width="100px" />
                <asp:Button ID="btnRepair" runat="server" CssClass="auto-style26" Font-Italic="True" Font-Names="Calibri" Height="25px" OnClick="btnRepair_Click" Text="Repair" Width="100px" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
