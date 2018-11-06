using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpSalaryCalc
{
    public partial class frmSalaryCalc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            String name = txtName.Text;
            String deg = ddl_Designation.ToString();

            int days = int.Parse(txtDays.Text);
            int salary = int.Parse( txtBasicSalary.Text);
            int ta = int.Parse( txtTA.Text);
            int da = int.Parse(txtDA.Text);
            int tax = int.Parse(txtTAX.Text);
            //Employee e1 = new Employee();
            //e1.getDetails(name,deg,days,salary,ta,da,tax);
           float  daysalary = salary / 365;
            float dayta = ta / 365;
            float dayda = da / 365;
           
            float netsalary;
            float calcTax = (tax * salary) / 100;
            float daytax = calcTax / 365;

            netsalary = (days * (daysalary + dayta + dayda - daytax));
            txtNetSalary.Text = netsalary.ToString();

            Panel4.Visible = true;

            lblName.Text = txtName.Text;
            lblDesignation.Text = ddl_Designation.SelectedValue;
            lblBSalary.Text = txtBasicSalary.Text;
            lblTA.Text = txtTA.Text;
            lblDA.Text = txtDA.Text;
            lblTAX.Text = txtTAX.Text+"%";
            lblWDays.Text = txtDays.Text;
            lblNetSalary.Text = txtNetSalary.Text;
        }


        protected void ddl_Designation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_Designation.SelectedIndex == 0)
            {
                LabelddlError.Text = "* Please Select Designation";
                txtBasicSalary.Text = " ";
            }
            if (ddl_Designation.SelectedItem.Text == "HOS")
            {
                txtBasicSalary.Text = 350000 + "";
                txtTA.Text = 5000 + "";
                txtDA.Text = 2000 + "";
                txtTAX.Text = 30 + "";
                LabelddlError.Text = " ";


            }
            if (ddl_Designation.SelectedItem.Text == "HOD")
            {
                txtBasicSalary.Text = 30000 + "";
                txtTA.Text = 4000 + "";
                txtDA.Text = 1800 + "";
                txtTAX.Text = 25 + "";
                LabelddlError.Text = " ";
            }
            if (ddl_Designation.SelectedItem.Text == "Incharge")
            {
                txtBasicSalary.Text = 280000 + "";
                txtTA.Text = 3500 + "";
                txtDA.Text = 1500 + "";
                txtTAX.Text = 20 + "";
                LabelddlError.Text = " ";
            }
            
            if (ddl_Designation.SelectedItem.Text == "Professor")
            {
                txtBasicSalary.Text = 250000 + "";
                txtTA.Text = 2000 + "";
                txtDA.Text = 1200 + "";
                txtTAX.Text = 18 + "";
                LabelddlError.Text = " ";
            }
            if (ddl_Designation.SelectedItem.Text == "Lab Assistant")
            {
                txtBasicSalary.Text = 180000 + "";
                txtTA.Text = 2500 + "";
                txtDA.Text = 1000 + "";
                txtTAX.Text = 12 + "";
                LabelddlError.Text = " ";
            }
            if (ddl_Designation.SelectedItem.Text == "Helper")
            {
                txtBasicSalary.Text = 12000 + "";
                txtTA.Text = 0 + "";
                txtDA.Text = 1000 + "";
                txtTAX.Text = 10 + "";
                LabelddlError.Text = " ";
            }
        }

        protected void txtDays_TextChanged(object sender, EventArgs e)
        {
            int[] lastDays = {29,30,31 };
            foreach (int s in lastDays)
            {
                if (s.Equals(txtDays.Text))
                {
                    Label16.Text = "Per 1 Month";
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = " ";
            ddl_Designation.SelectedIndex = 0;
            txtBasicSalary.Text = " ";
            txtDays.Text = " ";
            txtDA.Text = " ";
            txtTA.Text = " ";
            txtTAX.Text = " ";
            txtNetSalary.Text = " ";
            Panel4.Visible = false;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmHome.aspx");

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");

        }
    }
}