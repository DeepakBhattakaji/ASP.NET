using System;

namespace ASP_ALL_In_1
{
    public partial class CSharpFundamental : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        public void add()
        {

           double num1 = Convert.ToDouble(txtNum1.Text);
            double num2 = Convert.ToDouble(txtNum2.Text);
            double result = num1 + num2;
            lblResult.Text = result.ToString();
        }
        public void sub()
        {
            double num1 = Convert.ToDouble(txtNum1.Text);
            double num2 = Convert.ToDouble(txtNum2.Text);
            double result = num1 - num2;
            lblResult.Text = result.ToString();

        }
        public void mul()
        {
            double num1 = Convert.ToDouble(txtNum1.Text);
            double num2 = Convert.ToDouble(txtNum2.Text);
            double result = num1 * num2;
            lblResult.Text = result.ToString();

        }
        public void div()
        {
            double num1 = Convert.ToDouble(txtNum1.Text);
            double num2 = Convert.ToDouble(txtNum2.Text);
            double result = num1 / num2;
            lblResult.Text = result.ToString();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Char ch = Convert.ToChar( DropDownList1.SelectedItem.ToString());
            switch(ch)
            {
                 case '+':
                    add();
                    break;
                case '-':
                    sub();
                    break;
                case '*':
                    mul();
                    break;
                case '/':
                    div();
                    break;

            }
        }
    }
}