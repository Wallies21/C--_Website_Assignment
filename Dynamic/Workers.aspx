<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workers.aspx.cs" Inherits="Dynamic.Workers" %>

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
            left: 7px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 22px;
            left: 139px;
            z-index: 1;
            height: 27px;
            width: 119px;
        }
        .auto-style9 {
            position: absolute;
            top: 22px;
            z-index: 1;
            width: 54px;
            left: 359px;
        }
        .auto-style10 {
            position: absolute;
            top: 21px;
            left: 27px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 22px;
            left: 469px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 22px;
            left: 249px;
            z-index: 1;
            right: 999px;
        }
        .auto-style13 {
            width: 430px;
            height: 155px;
            position: absolute;
            top: 197px;
            left: 297px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 31px;
            left: 1226px;
            z-index: 1;
        }
        .auto-style19 {
            width: 1350px;
            height: 76px;
            position: absolute;
            top: 547px;
            left: 8px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 28px;
            left: 1019px;
            z-index: 1;
            width: 196px;
        }
        .auto-style22 {
            position: absolute;
            top: 30px;
            left: 899px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 24px;
            left: 83px;
            z-index: 1;
            width: 190px;
        }
        .auto-style24 {
            position: absolute;
            top: 25px;
            left: 26px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 6px;
            left: 541px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 39px;
            left: 541px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 23px;
            left: 300px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 28px;
            left: 1230px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 25px;
            left: 594px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Images/coachella1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-color: #996633;">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" CssClass="auto-style19">
                <asp:Label ID="Label3" runat="server" Text="Search:" CssClass="auto-style24"></asp:Label>
                <asp:TextBox ID="txtSearchWork" runat="server" CssClass="auto-style23" OnTextChanged="TextBox2_TextChanged" Width="200px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style22" Text="Remove by name:"></asp:Label>
                <asp:TextBox ID="txtDELWork" runat="server" CssClass="auto-style21"></asp:TextBox>
                <asp:Button ID="btnSortAlpha" runat="server" CssClass="auto-style27" OnClick="btnSortAlpha_Click" Text="Sort Alphabeticaly" Font-Italic="True" Font-Names="Calibri" Width="150px" />
                <asp:Button ID="btnSortAvail" runat="server" CssClass="auto-style28" OnClick="btnSortAvail_Click" Text="Sort by Availability" Font-Italic="True" Font-Names="Calibri" Width="150px" />
                <asp:Button ID="btnSearchW" runat="server" CssClass="auto-style29" Font-Italic="True" Font-Names="Calibri" Height="25px" OnClick="btnSearchW_Click" Text="Search" Width="100px" />
                <asp:Button ID="btnDelWork" runat="server" CssClass="auto-style30" Font-Italic="True" Font-Names="Calibri" Height="25px" OnClick="btnDelWork_Click" Text="Delete" Width="100px" />
            </asp:Panel>
            <div class="auto-style12" style="background-color: #FFCC66">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style9" PostBackUrl="~/GrainPage.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Grain</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style10" PostBackUrl="~/Main.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px" BorderStyle="Solid" BorderWidth="1px">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" PostBackUrl="~/DataBase.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px" OnClick="LinkButton5_Click">Database</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/LiveStock.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Livestock</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" BorderColor="Black" CssClass="auto-style7" ForeColor="Black" PostBackUrl="~/Implement.aspx" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px">Implements</asp:LinkButton>
                <asp:Label ID="lblWork" runat="server" CssClass="auto-style31"></asp:Label>
            </div>
            <asp:GridView ID="gvWorkers" runat="server" BackColor="#CCCCCC" CssClass="auto-style13" Font-Bold="False" Font-Italic="True" Font-Names="Calibri">
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Log Out" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dynamic_FarmConnectionString %>" SelectCommand="SELECT [WorkerName], [JobDescription], [Availability], [AessetsAssigned] FROM [Workers]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
