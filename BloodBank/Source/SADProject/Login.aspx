<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SADProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BLOOD BANK SYSTEM</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
        .table {
            width: 370px;
            border:1px solid;
            border-radius:8px;
            margin:auto;
            height:150px;
            margin-top:200px;
            background-color:#ffffff;
        }
        body{
            background-color:#808080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="table">
            <tr>
                <td colspan="3"><h3 class="text-danger text-center">BLOOD BANK SYSTEM</h3> <h2 class="text-center text-info">LOGIN</h2></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="250px" CssClass="text-warning"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="250px" CssClass="text-warning"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server">Froget password?</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-success" OnClick="btnLogin_Click"/>
&nbsp;<asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn-danger" OnClick="btnReset_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</body>
</html>
