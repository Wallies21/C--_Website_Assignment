<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dynamic.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 620px;
            text-align: center;
        }
        .auto-style3 {
            color: #00FF00;
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: left;
            background-color: #00CC00;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
            text-align: center;
            height: 60px;
        }
    </style>
</head>
<body style="height: 617px">
    <form id="form1" runat="server">
        <div aria-live="assertive" aria-orientation="vertical" aria-selected="true" aria-sort="none" class="auto-style1" role="form" spellcheck="True" style="background-position: inherit; background-image: url('Images/Future-of-Farming-in-Pennsylvania--1500x1001.jpg'); background-attachment: fixed; background-repeat: no-repeat;">
            <span class="auto-style3"><strong style="font-size: 44px">
            <br />
            Dynmic Farming</strong></span><span class="auto-style3" style="font-size: 35px"><br />
            Login</span><br class="auto-style3" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br aria-orientation="vertical" />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" Height="64px">
                <div class="auto-style6">
                    <strong>
                    <br />
                    User ID -
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtID" ErrorMessage="Required Field!">Required Field!</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp; Password - </strong>
                    <asp:TextBox ID="txtPW" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPW" ErrorMessage="Required Field!">Required Field!</asp:RequiredFieldValidator>
                    </strong>&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Login" OnClick="Button1_Click" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Names="Calibri" />
                </div>
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
