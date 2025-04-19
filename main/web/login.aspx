<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="main.web.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        /* تنظیمات پایه */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .button{
            margin-top:10%;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #121212;
            color: #ffffff;
        }

        /* استایل فرم لاگین */
        .login-container {
            background-color: #1f1f1f;
            padding: 40px;
            width: 100%;
            max-width: 350px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 24px;
            font-size: 24px;
            color: #ffffff;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #333;
            border-radius: 8px;
            background-color: #2e2e2e;
            color: #ffffff;
            font-size: 16px;
        }

        .login-container input[type="text"]::placeholder,
        .login-container input[type="password"]::placeholder {
            color: #aaaaaa;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;

            border-radius: 8px;
            background-color: #4a90e2;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-container input[type="submit"]:hover {
            background-color: #357ab8;
        }

        .login-container a {
            display: block;
            margin-top: 16px;
            color: #bbbbbb;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s;
        }

        .login-container a:hover {
            color: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Login</h2>
            <asp:TextBox ID="username" runat="server" placeholder="Username" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Password" CssClass="input"></asp:TextBox>
            <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="button" OnClick="LoginButton_Click" />
            <asp:Label ID="lbl_res" runat="server" Text=""></asp:Label>
            <a href="#">Forgot your password?</a>
        </div>
    </form>
</body>
</html>
