<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDonor.aspx.cs" Inherits="SADProject.AddDonor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD DONOR</title>
<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>

</head>
<body>
<div class="container-fluid">
        <div class="row">
            <div class="col-md-4" style="margin-left:auto;margin-right:auto"></div>
            <div class="col-md-4" style="margin-left:auto;margin-right:auto">
                <h2 align="center" dir="rtl" style="font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; color: #0026ff;text-decoration:underline;">
                    Add Donor
                </h2>
                <br /><br />
                <form id="form1" runat="server">

                    <table class="nav-justified"">
                        <tr>
                            <td>Registration No</td>
                            <td>
                                <asp:TextBox ID="txtRegNo" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Full Name</td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Age</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtAge" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <asp:TextBox ID="txtPass" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Mobile</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtMobile" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Blood Type</td>
                            <td>
                                <asp:TextBox ID="txtBloodType" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial No</td>
                            <td>
                                <asp:TextBox ID="txtSerialNo" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>No of Points</td>
                            <td>
                                <asp:TextBox ID="txtNoOfPoint" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Blood Component</td>
                            <td>
                                <asp:TextBox ID="txtBloodComp" runat="server" Width="250px" CssClass="text-info"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                &nbsp;</td>
                            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnAdd" runat="server" Text="ADD" CssClass="btn-success" OnClick="btnAdd_Click"/>
                                &nbsp;<asp:Button ID="btnClear" runat="server" Text="CLEAR" CssClass="btn-danger" OnClick="btnClear_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style2">
                                <asp:Label ID="lblError" runat="server" style="color:red;font-weight:bold;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </div>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</body>
</html>
