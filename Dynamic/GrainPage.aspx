<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GrainPage.aspx.cs" Inherits="Dynamic.GrainPage" %>

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
            top: 26px;
            left: 147px;
            z-index: 1;
            height: 27px;
            width: 119px;
        }
        .auto-style9 {
            position: absolute;
            top: 26px;
            left: 367px;
            z-index: 1;
            width: 54px;
        }
        .auto-style10 {
            position: absolute;
            top: 24px;
            left: 35px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 26px;
            left: 477px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 26px;
            left: 257px;
            z-index: 1;
            right: 991px;
        }
        .auto-style14 {
            position: absolute;
            top: 23px;
            left: 1217px;
            z-index: 1;
        }
        .auto-style15 {
            width: 1350px;
            height: 74px;
            position: absolute;
            top: 558px;
            left: 8px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 28px;
            left: 35px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 26px;
            left: 1222px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 27px;
            left: 1020px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 28px;
            left: 909px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 26px;
            left: 89px;
            z-index: 1;
            width: 199px;
        }
        .auto-style22 {
            position: absolute;
            top: 25px;
            left: 306px;
            z-index: 1;
            right: 944px;
        }
        .auto-style23 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 233px;
            left: 42px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 10px;
            left: 610px;
            z-index: 1;
            height: 25px;
        }
        .auto-style25 {
            position: absolute;
            top: 40px;
            left: 610px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 28px;
            left: 611px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Images/GrainePage.jpg'); background-repeat: repeat; background-attachment: fixed;">
            <div class="auto-style12" style="background-color: #FFCC66">
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" BorderColor="Black" CssClass="auto-style7" ForeColor="Black" PostBackUrl="~/Implement.aspx" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px">Implements</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblGrain" runat="server" CssClass="auto-style26"></asp:Label>
                &nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style9" PostBackUrl="~/Workers.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Workers</asp:LinkButton>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Log Out" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style10" PostBackUrl="~/Main.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px" BorderStyle="Solid" BorderWidth="1px">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" PostBackUrl="~/DataBase.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Database</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/LiveStock.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Livestock</asp:LinkButton>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dynamic_FarmConnectionString %>" SelectCommand="SELECT * FROM [Grain]"></asp:SqlDataSource>
            <asp:GridView ID="gvGrains" runat="server" BackColor="#CCCCCC" CssClass="auto-style23">
            </asp:GridView>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC66" CssClass="auto-style15">
                <br />
                <asp:Button ID="btnSearchGrain" runat="server" CssClass="auto-style22" OnClick="btnSearchGrain_Click" Text="Search" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="Search:"></asp:Label>
                <asp:TextBox ID="txtsearchGrain" runat="server" CssClass="auto-style21" Width="200px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style20" Text="Remove by type:"></asp:Label>
                <asp:TextBox ID="txtDELGrain" runat="server" CssClass="auto-style19" Width="184px"></asp:TextBox>
                <asp:Button ID="btnDELGrain" runat="server" CssClass="auto-style18" Font-Italic="True" Font-Names="Calibri" OnClick="btnDELGrain_Click" Text="Delete" Height="25px" Width="100px" />
                <asp:Button ID="btnSortOnHand" runat="server" CssClass="auto-style24" OnClick="btnSortOnHand_Click" Text="Grain Availability" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="150px" />
                <asp:Button ID="btnFertAvail" runat="server" CssClass="auto-style25" OnClick="btnFertAvail_Click" Text="Fertilize Availabilty" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="150px" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
