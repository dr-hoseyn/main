using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Simple_authentication : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            lblMessage.Text = "";
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
        {
            lblMessage.Text = "لطفا تمام فیلدها را پر کنید";
            lblMessage.CssClass = "message error";
            return;
        }

        if (username == "admin")
        {
            if (password == "1234")
            {
                lblMessage.Text = "ورود موفقیت‌آمیز";
                lblMessage.CssClass = "message success";
            }
            else
            {
                lblMessage.Text = "رمز عبور اشتباه است";
                lblMessage.CssClass = "message error";
            }
        }
        else
        {
            lblMessage.Text = "کاربر یافت نشد";
            lblMessage.CssClass = "message error";
        }
    }
}