<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="main.web.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        
        .welcome-message {
            font-size: 24px;
            margin-bottom: 20px;
            color: #4a90e2;
        }
        
        .user-table {
            width: 80%;
            max-width: 800px;
            border-collapse: collapse;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        
        .user-table th, .user-table td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        
        .user-table th {
            background-color: #4a90e2;
            color: #fff;
            font-weight: bold;
        }
        
        .user-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="welcome-message">
        خوش آمدید، ادمین عزیز!
    </div>
        <form id="form1" runat="server">

    <asp:GridView ID="UserGridView" runat="server" CssClass="user-table" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="password" HeaderText="password" />
        </Columns>
    </asp:GridView>
                </form>

</body>
</html>
