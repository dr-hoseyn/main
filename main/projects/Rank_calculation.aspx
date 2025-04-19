<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank_calculation.aspx.cs" Inherits="Rank_calculation" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>محاسبه رتبه</title>
        <link href="styles/Style.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>محاسبه رتبه دانش‌آموز</h2>
                <asp:TextBox ID="txtScore" runat="server" CssClass="input-field" placeholder="نمره را وارد کنید">
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