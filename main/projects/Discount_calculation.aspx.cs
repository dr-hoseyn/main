using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Discount_calculation : System.Web.UI.Page
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
        try
        {
            if (string.IsNullOrEmpty(txtPrice.Text))
            {
                lblResult.Text = "لطفا قیمت محصول را وارد کنید";
                return;
            }

            // حذف کاما از مقدار ورودی
            double price = Convert.ToDouble(txtPrice.Text.Replace(",", ""));
            double discountPercent;

            // اگر درصد تخفیف وارد شده باشد، از آن استفاده می‌کنیم
            if (!string.IsNullOrEmpty(txtDiscount.Text))
            {
                discountPercent = Convert.ToDouble(txtDiscount.Text.Replace(",", ""));
            }
            else
            {
                // محاسبه درصد تخفیف بر اساس قیمت
                if (price < 100000)
                    discountPercent = 0;
                else if (price < 500000)
                    discountPercent = 10;
                else if (price < 1000000)
                    discountPercent = 15;
                else
                    discountPercent = 20;
            }

            double discountAmount = (price * discountPercent) / 100;
            double finalPrice = price - discountAmount;

            lblResult.Text = string.Format("قیمت اولیه: {0:N0} تومان<br/>درصد تخفیف: %{1}<br/>مبلغ تخفیف: {2:N0} تومان<br/>قیمت نهایی: {3:N0} تومان",
                price, discountPercent, discountAmount, finalPrice);
        }
        catch (Exception)
        {
            lblResult.Text = "لطفا مقادیر معتبر وارد کنید";
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearForm();
    }

    private void ClearForm()
    {
        txtPrice.Text = string.Empty;
        txtDiscount.Text = string.Empty;
        lblResult.Text = string.Empty;
    }
}