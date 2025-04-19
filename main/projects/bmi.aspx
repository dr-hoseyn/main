<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bmi.aspx.cs" Inherits="main.projects.bmi" %>
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>محاسبه BMI</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <link href="styles/Style.css" rel="stylesheet" />
        <style>
            body {
                background-color: rgb(15, 23, 42) !important;
                direction: rtl;
            }

            .calculator-container {
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                -webkit-backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
                border-radius: 16px;
                box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
                padding: 30px;
                width: 350px;
                direction: rtl;
            }

            .form-label {
                color: rgba(255, 255, 255, 0.9);
                font-size: 16px;
                text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            }

            .input-field {
                width: 100%;
                padding: 12px;
                margin: 10px 0;
                border: 1px solid rgba(255, 255, 255, 0.2);
                border-radius: 12px;
                font-size: 16px;
                color: white;
                text-align: center;
                background: rgba(255, 255, 255, 0.05);
                backdrop-filter: blur(5px);
                transition: all 0.3s ease;
            }

            .input-field:focus {
                outline: none;
                border-color: rgba(255, 255, 255, 0.5);
                background: rgba(255, 255, 255, 0.1);
            }

            .calc-button {
                width: 100%;
                padding: 15px;
                margin: 5px 0;
                background: rgba(0, 123, 255, 0.3);
                color: white;
                border: 1px solid rgba(255, 255, 255, 0.2);
                border-radius: 12px;
                font-size: 20px;
                transition: all 0.3s ease;
                backdrop-filter: blur(5px);
            }

            .calc-button:hover {
                background: rgba(0, 123, 255, 0.5);
                border-color: rgba(255, 255, 255, 0.3);
                transform: translateY(-2px);
            }

            .result-label {
                background: rgba(255, 255, 255, 0.05);
                padding: 15px;
                border-radius: 12px;
                margin: 15px 0;
                text-align: center;
                color: rgba(255, 255, 255, 0.9);
                font-size: 18px;
                border: 1px solid rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(5px);
            }

            h2 {
                color: rgba(255, 255, 255, 0.9);
                margin-bottom: 25px;
                text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            }

            .fas {
                margin: 0 5px;
                color: rgba(255, 255, 255, 0.8);
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="calculator-container">
                <h2 class="text-center">
                    <i class="fas fa-weight"></i>
                    محاسبه BMI
                </h2>

                <div class="mb-3">
                    <label class="form-label">
                        <i class="fas fa-weight-scale"></i>
                        وزن (کیلوگرم):
                    </label>
                    <asp:TextBox ID="txtWeight" runat="server" CssClass="input-field"
                        placeholder="وزن خود را وارد کنید" />
                </div>

                <div class="mb-3">
                    <label class="form-label">
                        <i class="fas fa-ruler-vertical"></i>
                        قد (سانتی‌متر):
                    </label>
                    <asp:TextBox ID="txtHeight" runat="server" CssClass="input-field"
                        placeholder="قد خود را وارد کنید" />
                </div>

                <asp:Button ID="btnCalculateBMI" runat="server" Text="محاسبه BMI" CssClass="calc-button"
                    OnClick="btnCalculateBMI_Click" />

                <div class="result-label">
                    <i class="fas fa-calculator"></i>
                    <asp:Label ID="lblResult" runat="server" Text="نتیجه: " />
                </div>
            </div>
        </form>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>