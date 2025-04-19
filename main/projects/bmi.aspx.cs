using System;

namespace main.projects
{
    public partial class bmi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculateBMI_Click(object sender, EventArgs e)
        {
            if (ValidateInputs(out double weight, out double height))
            {
                height = height / 100;  // تبدیل از سانتی‌متر به متر
                double bmi = weight / (height * height);
                lblResult.Text = $"Your BMI is: {bmi:F2}";

                if (bmi < 18.5)
                {
                    lblResult.Text += " (Underweight)";
                }
                else if (bmi >= 18.5 && bmi < 24.9)
                {
                    lblResult.Text += " (Normal weight)";
                }
                else if (bmi >= 25 && bmi < 29.9)
                {
                    lblResult.Text += " (Overweight)";
                }
                else
                {
                    lblResult.Text += " (Obesity)";
                }
            }
        }

        private bool ValidateInputs(out double weight, out double height)
        {
            bool isValid = true;
            weight = 0;
            height = 0;

            if (!double.TryParse(txtWeight.Text, out weight))
            {
                lblResult.Text = "Error: Please enter a valid weight.";
                isValid = false;
            }

            if (isValid && !double.TryParse(txtHeight.Text, out height))
            {
                lblResult.Text = "Error: Please enter a valid height.";
                isValid = false;
            }

            return isValid;
        }
    }
}
