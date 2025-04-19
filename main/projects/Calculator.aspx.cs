using System;

namespace SimpleCalculator
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (ValidateInputs(out double num1, out double num2))
            {
                double result = num1 + num2;
                lblResult.Text = $"Result: {result}";
            }
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            if (ValidateInputs(out double num1, out double num2))
            {
                double result = num1 - num2;
                lblResult.Text = $"Result: {result}";
            }
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            if (ValidateInputs(out double num1, out double num2))
            {
                double result = num1 * num2;
                lblResult.Text = $"Result: {result}";
            }
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            if (ValidateInputs(out double num1, out double num2))
            {
                if (num2 != 0)
                {
                    double result = num1 / num2;
                    lblResult.Text = $"Result: {result}";
                }
                else
                {
                    lblResult.Text = "Error: Division by zero is not allowed.";
                }
            }
        }

        private bool ValidateInputs(out double num1, out double num2)
        {
            bool isValid = true;
            num1 = 0;
            num2 = 0;

            if (!double.TryParse(txtNumber1.Text, out num1))
            {
                lblResult.Text = "Error: Please enter a valid first number.";
                isValid = false;
            }

            if (isValid && !double.TryParse(txtNumber2.Text, out num2))
            {
                lblResult.Text = "Error: Please enter a valid second number.";
                isValid = false;
            }

            return isValid;
        }
    }
}
