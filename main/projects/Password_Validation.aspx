<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password_Validation.aspx.cs" Inherits="Password_Validation" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>اعتبارسنجی رمز عبور</title>
        <link href="styles/Style.css" rel="stylesheet" />
        <style>
            .password-strength {
                margin-top: 10px;
                height: 5px;
                background-color: #ddd;
                border-radius: 3px;
            }

            .strength-meter {
                height: 100%;
                border-radius: 3px;
                transition: width 0.3s ease-in-out, background-color 0.3s ease-in-out;
            }

            .very-weak {
                width: 20%;
                background-color: #ff4444;
            }

            .weak {
                width: 40%;
                background-color: #ffbb33;
            }

            .medium {
                width: 60%;
                background-color: #ffeb3b;
            }

            .strong {
                width: 80%;
                background-color: #00C851;
            }

            .very-strong {
                width: 100%;
                background-color: #007E33;
            }

            .password-container {
                position: relative;
                width: 100%;
            }

            .toggle-password {
                position: absolute;
                left: 10px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
                color: #666;
                padding: 5px;
                z-index: 1;
            }

            .toggle-password:hover {
                color: #333;
            }

            #txtPassword {
                padding-left: 35px;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>اعتبارسنجی رمز عبور</h2>
                <div class="password-container">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field"
                        placeholder="رمز عبور را وارد کنید" TextMode="Password"
                        onkeyup="checkPasswordStrength(this.value)"></asp:TextBox>
                    <span class="toggle-password" onclick="togglePassword()">نمایش</span>
                </div>
                <div class="password-strength">
                    <div id="strengthMeter" class="strength-meter"></div>
                </div>
                <div class="button-group">
                    <asp:Button ID="btnValidate" runat="server" Text="بررسی" CssClass="calc-button"
                        OnClick="btnValidate_Click" Style="width: 100%" />
                </div>
                <asp:Label ID="lblResult" runat="server" CssClass="result-label"></asp:Label>
            </div>
        </form>

        <script type="text/javascript">
            function checkPasswordStrength(password) {
                let strength = 0;
                let strengthClass = '';
                let message = '';

                // طول رمز عبور
                if (password.length >= 8) {
                    strength += 1;
                }

                // وجود عدد
                if (/\d/.test(password)) {
                    strength += 1;
                }

                // وجود حرف بزرگ
                if (/[A-Z]/.test(password)) {
                    strength += 1;
                }

                // وجود کاراکتر خاص
                if (/[@#$%&*!]/.test(password)) {
                    strength += 1;
                }

                // تعیین کلاس و پیام بر اساس قدرت رمز
                switch (strength) {
                    case 0:
                        strengthClass = '';
                        message = '';
                        break;
                    case 1:
                        strengthClass = 'very-weak';
                        message = 'خیلی ضعیف';
                        break;
                    case 2:
                        strengthClass = 'weak';
                        message = 'ضعیف';
                        break;
                    case 3:
                        strengthClass = 'medium';
                        message = 'متوسط';
                        break;
                    case 4:
                        strengthClass = 'very-strong';
                        message = 'قوی';
                        break;
                }

                // به‌روزرسانی نوار قدرت رمز
                const strengthMeter = document.getElementById('strengthMeter');
                strengthMeter.className = 'strength-meter ' + strengthClass;

                // به‌روزرسانی پیام
                const lblResult = document.getElementById('<%= lblResult.ClientID %>');
                lblResult.innerHTML = message;
            }

            function togglePassword() {
                const passwordInput = document.getElementById('<%= txtPassword.ClientID %>');
                const toggleIcon = document.querySelector('.toggle-password');

                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    toggleIcon.classList.remove('fa-eye');
                    toggleIcon.classList.add('fa-eye-slash');
                } else {
                    passwordInput.type = 'password';
                    toggleIcon.classList.remove('fa-eye-slash');
                    toggleIcon.classList.add('fa-eye');
                }
            }
        </script>
    </body>

    </html>