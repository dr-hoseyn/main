<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Discount_calculation.aspx.cs" Inherits="Discount_calculation"
    %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>محاسبه تخفیف</title>
        <link href="styles/Style.css" rel="stylesheet" />
        <script type="text/javascript">
            function formatNumber(input) {
                // حذف همه کاراکترهای غیر عددی
                let value = input.value.replace(/[^\d]/g, '');

                // اضافه کردن کاما هر سه رقم
                value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");

                input.value = value;
            }
        </script>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>محاسبه تخفیف محصول</h2>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="input-field" placeholder="قیمت محصول را وارد کنید"
                    onkeyup="formatNumber(this)">
                </asp:TextBox>
                <asp:TextBox ID="txtDiscount" runat="server" CssClass="input-field" placeholder="درصد تخفیف (اختیاری)"
                    onkeyup="formatNumber(this)">
                </asp:TextBox>

                <div class="button-group">
                    <asp:Button ID="btnCalculate" runat="server" Text="محاسبه" CssClass="calc-button"
                        OnClick="btnCalculate_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="پاک کردن" CssClass="calc-button"
                        OnClick="btnClear_Click" />
                </div>

                <asp:Label ID="lblResult" runat="server" CssClass="result-label"></asp:Label>
            </div>
        </form>
    </body>

    </html>