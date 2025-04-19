using System;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Password_Validation : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ClearForm();
        }
    }

    protected void btnValidate_Click(object sender, EventArgs e)
    {
        string password = txtPassword.Text;
        string message = ValidatePassword(password);
        lblResult.Text = message;
    }

    private string ValidatePassword(string password)
    {
        if (string.IsNullOrEmpty(password))
            return "لطفاً رمز عبور را وارد کنید";

        bool hasMinLength = password.Length >= 8;
        bool hasNumber = Regex.IsMatch(password, @"\d");
        bool hasUpperCase = Regex.IsMatch(password, @"[A-Z]");
        bool hasSpecialChar = Regex.IsMatch(password, @"[@#$%&*!]");

        if (!hasMinLength)
            return "رمز عبور باید حداقل 8 کاراکتر باشد";

        if (!hasNumber)
            return "رمز عبور باید حداقل یک عدد داشته باشد";

        if (!hasUpperCase)
            return "رمز عبور باید حداقل یک حرف بزرگ انگلیسی داشته باشد";

        if (!hasSpecialChar)
            return "رمز عبور باید حداقل یک کاراکتر خاص (@, #, $, %, &, *, !) داشته باشد";

        return "رمز عبور معتبر است! ✓";
    }

    private void ClearForm()
    {
        txtPassword.Text = string.Empty;
        lblResult.Text = string.Empty;
    }
}