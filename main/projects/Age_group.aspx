<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Age_group.aspx.cs" Inherits="Age_group" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>تعیین گروه سنی</title>
        <link href="styles/Style.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>تعیین گروه سنی</h2>
                <asp:TextBox ID="txtAge" runat="server" CssClass="input-field" placeholder="سن را وارد کنید">
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