using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rank_calculation : System.Web.UI.Page
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
        if (string.IsNullOrEmpty(txtScore.Text))
        {
            lblResult.Text = "لطفا نمره را وارد کنید";
            return;
        }

        if (!double.TryParse(txtScore.Text, out double score))
        {
            lblResult.Text = "لطفا یک عدد معتبر وارد کنید";
            return;
        }

        if (score < 0 || score > 100)
        {
            lblResult.Text = "نمره باید بین 0 تا 100 باشد";
            return;
        }

        string rank = DetermineRank(score);
        lblResult.Text = $"رتبه دانش‌آموز: {rank}";

        ScriptManager.RegisterStartupScript(this, this.GetType(), "updateRank", 
            $"updateRankIndicator({score});", true);
    }

    private string DetermineRank(double score)
    {
        if (score >= 90)
            return "عالی";
        else if (score >= 75)
            return "خوب";
        else if (score >= 50)
            return "متوسط";
        else
            return "ضعیف";
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearForm();
    }

    private void ClearForm()
    {
        txtScore.Text = string.Empty;
        lblResult.Text = string.Empty;
    }
}