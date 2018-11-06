using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.EBS
{
    public partial class frm_BillingSystem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            if(!IsPostBack)
            {
                ddlYear.Items.Insert(0, "Year");
                getYears();
                ddlMonth.Items.Insert(0, "Month");
                getMonths();
                ddlDay.Items.Insert(0, "Day");
                getDays();

                ddlAreas.Items.Insert(0, "Select Area");
                ddlCategories.Items.Insert(0, "Select Category");
                ddlPhase.Items.Insert(0, "Select Phase");
            }
        }

        public void getDays()
        {
            int year = int.Parse( DateTime.Now.Year.ToString());
            for(int i=2000; i<=year;i++)
            {
                ddlYear.Items.Add(i.ToString());
            }

        }

        public void getMonths()
        {
            int month = 12;
            for (int i=01;i<=month;i++)
            {
                ddlMonth.Items.Add(i.ToString());
            }
        }

        public void getYears()
        {
            int day = 31;
            for(int i=01;i<=day;i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
        }

        public void calc()
        {
            if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 1 && ddlAreas.SelectedIndex == 1)
            {
                if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                {
                    int FixedCharge = 25;
                    txtTariff.Text = "Minimum Bill Unit is Less than 80";
                    txtTax.Text = "10";
                    double calc = FixedCharge + int.Parse(txtTax.Text);
                    txtTotalBill.Text = calc.ToString();
                }
                if (int.Parse(txtUnit.Text) > 80)
                {
                    int FixedCharge = 25;
                    txtTariff.Text = "1.45";
                    txtTax.Text = "10";
                    double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                    txtTotalBill.Text = calc.ToString();
                }
            }
            if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 1 && ddlAreas.SelectedIndex == 2)
            {
                if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                {
                    int FixedCharge = 25;
                    txtTariff.Text = "Minimum Bill Unit is Less than 80";
                    txtTax.Text = "30";
                    double calc = FixedCharge + int.Parse(txtTax.Text);
                    txtTotalBill.Text = calc.ToString();
                }

                if (int.Parse(txtUnit.Text) > 80)
                {
                    int FixedCharge = 25;
                    txtTariff.Text = "1.45";
                    txtTax.Text = "30";
                    double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                    txtTotalBill.Text = calc.ToString();
                }
            }
            if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 1 && ddlAreas.SelectedIndex == 3)
            {
                if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                {
                    int FixedCharge = 25;
                    txtTariff.Text = "Minimum Bill Unit is Less than 80";
                    txtTax.Text = "25";
                    double calc = FixedCharge + int.Parse(txtTax.Text);
                    txtTotalBill.Text = calc.ToString();
                }

                if (int.Parse(txtUnit.Text) > 80)
                {
                    int FixedCharge = 25;
                    txtTariff.Text = "1.45";
                    txtTax.Text = "25";
                    double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                    txtTotalBill.Text = calc.ToString();
                }
            }
                if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 1 && ddlAreas.SelectedIndex == 4)
                {
                    if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                    {
                        int FixedCharge = 25;
                        txtTariff.Text = "Minimum Bill Unit is Less than 80";
                        txtTax.Text = "20";
                        double calc = FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                    if (int.Parse(txtUnit.Text) > 80)
                    {
                        int FixedCharge = 25;
                        txtTariff.Text = "1.45";
                        txtTax.Text = "20";
                        double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                }
                /****************************************/
                if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 2 && ddlAreas.SelectedIndex == 1)
                {
                  if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "Minimum Bill Unit is Less than 80";
                        txtTax.Text = "10";
                        double calc = FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                    if (int.Parse(txtUnit.Text) > 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "2.75";
                        txtTax.Text = "10";
                        double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                }
                if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 2 && ddlAreas.SelectedIndex == 2)
                {
                    if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "Minimum Bill Unit is Less than 80";
                        txtTax.Text = "30";
                        double calc = FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                    if (int.Parse(txtUnit.Text) > 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "2.75";
                        txtTax.Text = "30";
                        double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                }
                if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 2 && ddlAreas.SelectedIndex == 3)
                {
                    if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "Minimum Bill Unit is Less than 80";
                        txtTax.Text = "25";
                        double calc = FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                    if (int.Parse(txtUnit.Text) > 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "2.75";
                        txtTax.Text = "25";
                        double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                }
                if (ddlCategories.SelectedIndex == 1 && ddlPhase.SelectedIndex == 2 && ddlAreas.SelectedIndex == 4)
                {
                    if (int.Parse(txtUnit.Text) >= 0 && int.Parse(txtUnit.Text) <= 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "Minimum Bill Unit is Less than 80";
                        txtTax.Text = "20";
                        double calc = FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                    if (int.Parse(txtUnit.Text) > 80)
                    {
                        int FixedCharge = 75;
                        txtTariff.Text = "2.75";
                        txtTax.Text = "20";
                        double calc = int.Parse(txtUnit.Text) * double.Parse(txtTariff.Text) + FixedCharge + int.Parse(txtTax.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                }

            }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            calc();
        }

            protected void btnCalcUnit_Click(object sender, EventArgs e)
        {
            if(int.Parse(txtCurrent.Text) >= int.Parse(txtPrev.Text))
            {
                int calc = int.Parse(txtCurrent.Text) - int.Parse(txtPrev.Text);
                txtUnit.Text = calc.ToString();
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Please Enter Correct Value.(Current Meter is Greater than Previous Meter)";

            }
        }
        /********************************************************/


    }
}