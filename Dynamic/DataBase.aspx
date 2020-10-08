<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBase.aspx.cs" Inherits="Dynamic.DataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 615px;
            width: 1350px;
            text-align: right;
        }
        .auto-style12 {
            text-align: center;
            height: 73px;
            width: 1350px;
            position: absolute;
            top: 9px;
            left: 7px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 23px;
            left: 141px;
            z-index: 1;
            height: 27px;
            width: 119px;
            right: 1150px;
        }
        .auto-style9 {
            position: absolute;
            top: 23px;
            z-index: 1;
            width: 54px;
            left: 361px;
        }
        .auto-style10 {
            position: absolute;
            top: 22px;
            left: 30px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 23px;
            left: 471px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 23px;
            left: 251px;
            z-index: 1;
            right: 1040px;
        }
        .auto-style13 {
            position: absolute;
            top: 35px;
            left: 1233px;
            z-index: 1;
        }
        .auto-style14 {
            width: 305px;
            height: 390px;
            position: absolute;
            top: 124px;
            left: 538px;
            z-index: 1;
        }
        .auto-style16 {
            width: 1350px;
            height: 75px;
            position: absolute;
            top: 547px;
            left: 7px;
            z-index: 1;
        }
        .auto-style17 {
            width: 125px;
            height: 27px;
            position: absolute;
            top: 235px;
            left: 34px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: -175px;
            left: 40px;
            z-index: 1;
        }
        .auto-style20 {
            width: 331px;
            height: 390px;
            position: absolute;
            top: 123px;
            left: 524px;
            z-index: 1;
        }
        .auto-style21 {
            width: 362px;
            height: 390px;
            position: absolute;
            top: 126px;
            left: 508px;
            z-index: 1;
        }
        .auto-style22 {
            width: 305px;
            height: 390px;
            position: absolute;
            top: 126px;
            left: 535px;
            z-index: 1;
        }
        .auto-style23 {
            width: 305px;
            height: 390px;
            position: absolute;
            left: 539px;
            z-index: 1;
            top: 126px;
        }
        .auto-style24 {
            position: absolute;
            top: 30px;
            left: 39px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 200px;
            left: 26px;
            z-index: 1;
            width: 156px;
        }
        .auto-style26 {
            position: absolute;
            top: 24px;
            left: 602px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-position: center; background-image: url('Images/DatabasePage.jpg'); background-repeat: repeat-x; background-attachment: fixed; background-color: #CCCCCC;">
            <div class="auto-style12" style="background-color: #FFCC66">
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" BorderColor="Black" CssClass="auto-style7" ForeColor="Black" PostBackUrl="~/Implement.aspx" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" Height="25px" Width="100px">Implements</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style9" PostBackUrl="~/GrainPage.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Grain</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style10" PostBackUrl="~/Main.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px" BorderStyle="Solid" BorderWidth="1px">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" PostBackUrl="~/Workers.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Workers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/LiveStock.aspx" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Font-Underline="False" ForeColor="Black" Height="25px" Width="100px">Livestock</asp:LinkButton>
                <asp:Label ID="lblData" runat="server" CssClass="auto-style26"></asp:Label>
            </div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" CssClass="auto-style14">
                EDIT IMPLEMENTS:<br />
                <br />
                Implement:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Description:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                Cost price:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                Selling price:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                Purchase date:&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                Condition:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                Repair:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnImp" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Text="Add" OnClick="btnImp_Click" />
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="Log Out" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" CssClass="auto-style16">
                <asp:Button ID="btnDisplay" runat="server" Text="Display" CssClass="auto-style18" OnClick="Button3_Click" Font-Bold="False" Font-Italic="True" Font-Names="Calibri" Height="25px" Width="100px" />
                <asp:Label ID="lblDisplay" runat="server" CssClass="auto-style24"></asp:Label>
            </asp:Panel>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" BackColor="#CCCCCC" CssClass="auto-style17" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
                <asp:ListItem>Implements</asp:ListItem>
                <asp:ListItem>Live Stock</asp:ListItem>
                <asp:ListItem>Grain          </asp:ListItem>
                <asp:ListItem>Workers</asp:ListItem>
                <asp:ListItem>Login</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="Panel3" runat="server" BackColor="#FFFFCC" CssClass="auto-style20">
                EDIT LIVE STOCK:<br />
                <br />
                <br />
                Type:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                Amount:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
                Location:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <br />
                Feed type:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                <br />
                Feed On Hand/kg:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                <br />
                Arriving Weight/kg:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                <br />
                Selling Weight/kg: &nbsp;
                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                <br />
                Cost Price:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                <br />
                Selleng Price:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                <br />
                Arriving Date:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox32" runat="server" OnTextChanged="TextBox32_TextChanged"></asp:TextBox>
                <br />
                Selling Date:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                <br />
                Amount Sold:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnLive" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Text="Add" OnClick="btnLive_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" BackColor="#FFFFCC" CssClass="auto-style21">
                EDIT GRAIN:<br />
                <br />
                Type:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                <br />
                Grain On Hand/kg:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                <br />
                Cost Price/Ton:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                <br />
                Selling Price/Ton:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                <br />
                Location:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                <br />
                Fertilizer type:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                <br />
                Fertilizer On Hand/kg: &nbsp;
                <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                <br />
                Cost Fertilizer/kg:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                <br />
                Farm Planted:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnGrain" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Text="Add" OnClick="btnGrain_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" BackColor="#FFFFCC" CssClass="auto-style22">
                EDIT WORKERS<br /> :<br />
                <br />
                Name:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                <br />
                <br />
                Description:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                <br />
                <br />
                Asset:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                <br />
                <br />
                Availability:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                <br />
                <br />
                Hours Worked:&nbsp;
                <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                <br />
                <br />
                Rate per Hour:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                <br />
                <br />
                Wage:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnWork" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" Text="Add" OnClick="Button6_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" BackColor="#FFFFCC" CssClass="auto-style23">
                EDIT LOGIN:<br />
                <br />
                ID:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                <br />
                <br />
                User Name:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                <br />
                <br />
                Password:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" OnClick="btnLogin_Click" Text="Add" />
            </asp:Panel>
            <asp:Label ID="Label1" runat="server" BackColor="#CCFFFF" CssClass="auto-style25" Text="Select Database to edit:"></asp:Label>
        </div>
    </form>
</body>
</html>
