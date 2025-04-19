using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Age_group : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ClearForm();
        }
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAge.Text))
        {
            lblResult.Text = "لطفا سن را وارد کنید";
            return;
        }

        if (!int.TryParse(txtAge.Text, out int age) || age < 0)
        {
            lblResult.Text = "لطفا یک عدد معتبر وارد کنید";
            return;
        }

        string ageGroup = DetermineAgeGroup(age);
        lblResult.Text = $"گروه سنی: {ageGroup}";
    }

    private string DetermineAgeGroup(int age)
    {
        if (age >= 0 && age <= 12)
            return "کودک";
        else if (age <= 19)
            return "نوجوان";
        else if (age <= 35)
            return "جوان";
        else if (age <= 60)
            return "میانسال";
        else
            return "سالمند";
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearForm();
    }

    private void ClearForm()
    {
        txtAge.Text = string.Empty;
        lblResult.Text = string.Empty;
    }
}