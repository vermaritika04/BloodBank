<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDonor.aspx.cs" Inherits="SADProject.ViewDonor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
        <h2 align="center" dir="rtl" style="font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; color: #b6ff00;text-decoration:underline;">
                    View Donor
                </h2>
    <form id="form1" runat="server">
    <div style="margin-left:200px;">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RegNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RegNo" HeaderText="RegNo" ReadOnly="True" SortExpression="RegNo" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="BloodType" HeaderText="BloodType" SortExpression="BloodType" />
                <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" SortExpression="SerialNo" />
                <asp:BoundField DataField="NoOfPoint" HeaderText="NoOfPoint" SortExpression="NoOfPoint" />
                <asp:BoundField DataField="BloodComp" HeaderText="BloodComp" SortExpression="BloodComp" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT * FROM [tblDonor]"></asp:SqlDataSource>
    
        <br />
        Registration No :<asp:TextBox ID="txtDelete" runat="server"></asp:TextBox>
        <asp:Button ID="btnDelete" runat="server" class="btn-danger" OnClick="btnDelete_Click" Text="DELETE" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
