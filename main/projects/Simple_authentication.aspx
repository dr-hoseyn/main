<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Simple_authentication.aspx.cs"
    Inherits="Simple_authentication" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>احراز هویت ساده</title>
        <link rel="stylesheet" href="styles/Style.css" />
        <style>
            .message {
                margin-top: 10px;
                padding: 10px;
                border-radius: 3px;
            }

            .error {
                background-color: #ffebee;
                color: #c62828;
            }

            .success {
                background-color: #e8f5e9;
                color: #2e7d32;
            }

            .input-group {
                margin-bottom: 15px;
                text-align: right;
            }

            .input-group label {
                display: block;
                margin-bottom: 5px;
                color: #ffffff;
                font-size: 14px;
            }

            #lblUsername,
            #lblPassword {
                color: #ffffff;
            }

            h2 {
                color: #ffffff;
                margin-bottom: 20px;
            }

            .login-button {
                width: 100%;
                padding: 10px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 12px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s ease;
            }

            .login-button:hover {
                background-color: #0056b3;
            }

            .validation-error {
                color: #ff4444;
                font-size: 12px;
                margin-top: 5px;
                display: block;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>ورود به سیستم</h2>
                <div class="input-group">
                    <asp:Label ID="lblUsername" runat="server" Text=": نام کاربری"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                        ErrorMessage="لطفا نام کاربری را وارد کنید" CssClass="validation-error">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="input-group">
                    <asp:Label ID="lblPassword" runat="server" Text=": رمز عبور"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="لطفا رمز عبور را وارد کنید" CssClass="validation-error">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="input-group">
                    <asp:Button ID="btnLogin" runat="server" Text="ورود" OnClick="btnLogin_Click"
                        CssClass="login-button" />
                </div>
                <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
            </div>
        </form>
    </body>

    </html>