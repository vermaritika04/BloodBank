<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDoctor.aspx.cs" Inherits="SADProject.ViewDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Doctor</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <h2 align="center" dir="rtl" style="font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; color: #b6ff00;text-decoration:underline;">
                    View Doctor
                </h2>
    <form id="form1" runat="server">
    <div style="margin-left:300px;">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RegNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RegNo" HeaderText="RegNo" ReadOnly="True" SortExpression="RegNo" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT * FROM [tblDoctor]"></asp:SqlDataSource>
    
        Registration No :<asp:TextBox ID="txtDelete" runat="server" OnTextChanged="txtDelete_TextChanged"></asp:TextBox>
&nbsp;<asp:Button ID="btnDelete" runat="server" Text="DELETE" class="btn-danger" OnClick="btnDelete_Click"/>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
