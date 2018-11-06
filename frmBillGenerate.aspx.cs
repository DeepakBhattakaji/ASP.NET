using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Electricity_Billing_System
{
    public partial class frmBillGenerate : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(" Data Source=DESKTOP-NFFRH2S;Initial Catalog=ProvDistCity;Integrated Security=True ");

        public void Bind_ddlProvince()
            {
            conn.Open();
            SqlCommand com = new SqlCommand("SELECT Province_No,Province_Name FROM tbl_Province", conn);
            SqlDataReader dr = com.ExecuteReader();

            
                ddl_Province.DataSource = dr;
                ddl_Province.Items.Clear();
                ddl_District.Items.Clear();
                ddl_City.Items.Clear();
                ddl_Province.Items.Add("Select Province No.");
                ddl_Province.DataTextField = "Province_Name";
                ddl_Province.DataValueField = "Province_No";
                ddl_Province.DataBind();
                conn.Close();

            }

        public void Bind_ddlDistrict()
        {
            conn.Open();
            SqlCommand com = new SqlCommand("SELECT District_No,District_Name FROM tbl_District WHERE Province_No='"+ddl_Province.SelectedValue+"' ", conn);

            SqlDataReader dr = com.ExecuteReader();
            
                ddl_District.DataSource = dr;
                ddl_District.Items.Clear();
                ddl_City.Items.Clear();
                txtAreas.Text = " ";
                ddl_District.Items.Add("Select District");
                ddl_District.DataTextField = "District_Name";
                ddl_District.DataValueField = "District_No";
                ddl_District.DataBind();
            ddl_District.Items.Insert(0, new ListItem("Select District", ""));
            ddl_City.Items.Insert(0, new ListItem("Select City", ""));


            conn.Close();
        }

        public void Bind_ddlCity()
        {
            conn.Open();
            SqlCommand com = new SqlCommand("SELECT City_No,City_Name,Areas FROM tbl_City WHERE District_No='" + ddl_District.SelectedValue + "' ", conn);
            
            SqlDataReader dr = com.ExecuteReader();

                ddl_City.DataSource = dr;
                ddl_City.Items.Clear();
                ddl_City.Items.Add("Select City");
                ddl_City.DataTextField = "City_Name";
                ddl_City.DataValueField = "City_No";
            ddl_City.DataBind();
            ddl_City.Items.Insert(0, new ListItem("Select City", ""));

            conn.Close();
        }

        public void Bind_Areas()
        {
            conn.Open();
            SqlCommand com = new SqlCommand("SELECT City_No,Areas  FROM tbl_City WHERE  City_No='"+ ddl_City.SelectedValue +"' ",conn );

            SqlDataReader dr = com.ExecuteReader();
              while (dr.Read())
              {
                 txtAreas.Text = (dr["Areas"].ToString());
                 txtAreas.DataBind();
              }
                 conn.Close();
        }

    protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMsg.Visible = false;
            lblErrorMsg1.Visible = false;

            //ddl_CustomerType.Visible = false;
            //ddl_Categories.Visible = false;
            //ddl_Phase.Visible = false;

            if (!IsPostBack)
            {
                getYears();
                ddlYear.Items.Insert(0, "Year");
                getMonths();
                ddlMonth.Items.Insert(0, "Month");
                getDay();
                ddlDay.Items.Insert(0, "Day");
            }

            ////////////////////////

            if(!IsPostBack)
            {
                Bind_ddlProvince();
                ddl_Province.Items.Insert(0, "Select Province No.");
                ddl_District.Items.Insert(0, "--------No Items-------");
                ddl_City.Items.Insert(0, "--------No Items-------");
                
                LTCustomerType();

            }
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
        public void getYears()
        {
            int currentYear = int.Parse(DateTime.Now.ToString("yyyy"));

         //   int tenYears = DateTime.Now.AddYears(-10);

            for (int i = 2000; i <= currentYear; i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
        }

        public void getMonths()
        {
            for(int i=1;i<=12;i++)
            {
               ddlMonth.Items.Add(i.ToString());
               
            }
         //   ddlMonth.Items.Insert(1,"January");

        }

        public void getDay()
        {
            for (int i = 1; i <= 31; i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
        }

      

        protected void ddl_Province_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlDistrict();

            //if (ddl_Province.SelectedIndex == 0)
            //{
            //    ddl_District.Items.Insert(0, "Please Select District");
            //}

        }

        protected void ddl_District_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlCity();
           // ddl_Province.Items.Insert(0, "Select District");

        }

        protected void ddl_City_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_Areas();
          //  ddl_Province.Items.Insert(0, "Select City");
        }

        public void LTCustomerType()
        {
            if (ddl_CustomerType.SelectedIndex == 1)
            {
                ddl_Categories.Items.Clear();
                ddl_Categories.Items.Add("Select Categories");
                ddl_Categories.Items.Add("Domestic Services : LT-I Category");
                ddl_Categories.Items.Add("Non Domestic & Commercial Services : LT-II Category");
                ddl_Categories.Items.Add("Industrial Services : LT-III Category");
                ddl_Categories.Items.Add("Cottage Industries : LT-IV Category");
                ddl_Categories.Items.Add("Agricultural Services : LT-V Category");
                ddl_Categories.Items.Add("Street Lighting and PWS Services : LT-VI Category");
                ddl_Categories.Items.Add("General Purpose Service : LT-VII Category");
                ddl_Categories.Items.Add("Temporary Supply Services : LT-VIII Category");


            }
            if (ddl_CustomerType.SelectedIndex == 2)
            {
                ddl_Categories.Items.Clear();
                ddl_Categories.Items.Add("Select Categories");
                ddl_Categories.Items.Add("Industry : HT-I Category");
                ddl_Categories.Items.Add("Others : HT-II Category");
                ddl_Categories.Items.Add("Airports, Bus Stations and Railways Stations : HT-III Category");
                ddl_Categories.Items.Add("Cottage Industries : HT-IV Category");
                ddl_Categories.Items.Add("Irrigation, Agricultural Services : HT-IV Category");
                ddl_Categories.Items.Add("Railway Tranction : HT-V Category");
                ddl_Categories.Items.Add("Townships and Residential Colonies : HT-VI Category");
                ddl_Categories.Items.Add("Green Power : HT-VII Category");
                ddl_Categories.Items.Add("Temporary : HT-VIII Category");


            }

          
        }
        protected void ddl_CustomerType_SelectedIndexChanged(object sender, EventArgs e)
        {
            LTCustomerType();
        }


        public void ddl_Phase_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
            protected void txtAreas_TextChanged(object sender, EventArgs e)
        {
         //  Bind_Areas();
        }

        protected void ddl_Categories_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_Areas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtUnitConsume_TextChanged(object sender, EventArgs e)
        {
           
        }

        public void Calculate()
        {
            if (ddl_CustomerType.SelectedIndex == 1 && ddl_Categories.SelectedIndex == 1 && ddl_Phase.SelectedIndex == 1)
            {
                if ((int.Parse(txtUnitConsume.Text) >= 0) && (int.Parse(txtUnitConsume.Text) <= 50))
                {
                    if ((txtAreas.Text == "Urban Area") || (txtAreas.Text == "Sub-Urban Area"))
                    {
                        double SinglePhaseAmount = 1.45;
                        int FixedCharge = 25;
                        txtTariff.Text = "1.45";
                        txtTaxRate.Text = "30";
                        txtDutyRate.Text = "15";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                    if ((txtAreas.Text == "Ex-Urban Area") || (txtAreas.Text == "Rular Area"))
                    {
                        double SinglePhaseAmount = 1.45;
                        int FixedCharge = 25;
                        txtTariff.Text = "1.45";
                        txtTaxRate.Text = "20";
                        txtDutyRate.Text = "10";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                }

                if ((int.Parse(txtUnitConsume.Text) >= 51) && (int.Parse(txtUnitConsume.Text) <= 100))
                {

                    if ((txtAreas.Text == "Urban Area") || (txtAreas.Text == "Sub-Urban Area"))
                    {
                        double SinglePhaseAmount = 2.60;
                        int FixedCharge = 50;
                        txtTariff.Text = "2.60";
                        txtTaxRate.Text = "35";
                        txtDutyRate.Text = "18";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                    if ((txtAreas.Text == "Ex-Urban Area") || (txtAreas.Text == "Rular Area"))
                    {
                        double SinglePhaseAmount = 2.60;
                        int FixedCharge = 50;
                        txtTariff.Text = "2.60";
                        txtTaxRate.Text = "30";
                        txtDutyRate.Text = "15";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                }
                if ((int.Parse(txtUnitConsume.Text) >= 101) && (int.Parse(txtUnitConsume.Text) <= 200))
                {

                    if ((txtAreas.Text == "Urban Area") || (txtAreas.Text == "Sub-Urban Area"))
                    {
                        double SinglePhaseAmount = 3.60;
                        int FixedCharge = 75;
                        txtTariff.Text = "3.60";
                        txtTaxRate.Text = "40";
                        txtDutyRate.Text = "20";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                    if ((txtAreas.Text == "Ex-Urban Area") || (txtAreas.Text == "Rular Area"))
                    {
                        double SinglePhaseAmount = 3.60;
                        int FixedCharge = 75;
                        txtTariff.Text = "3.60";
                        txtTaxRate.Text = "35";
                        txtDutyRate.Text = "18";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }

                }
                if (int.Parse(txtUnitConsume.Text) > 200)
                {

                    if ((txtAreas.Text == "Urban Area") || (txtAreas.Text == "Sub-Urban Area"))
                    {
                        double SinglePhaseAmount = 6.90;
                        int FixedCharge = 120;
                        txtTariff.Text = "6.90";
                        txtTaxRate.Text = "45";
                        txtDutyRate.Text = "25";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }
                    if ((txtAreas.Text == "Ex-Urban Area") || (txtAreas.Text == "Rular Area"))
                    {
                        double SinglePhaseAmount = 6.90;
                        int FixedCharge = 120;
                        txtTariff.Text = "6.90";
                        txtTaxRate.Text = "40";
                        txtDutyRate.Text = "20";
                        double calc = (int.Parse(txtUnitConsume.Text) * SinglePhaseAmount) + FixedCharge + int.Parse(txtTaxRate.Text) + int.Parse(txtDutyRate.Text);
                        txtTotalBill.Text = calc.ToString();
                    }


                }
                if (ddl_CustomerType.SelectedIndex == 2 && ddl_Categories.SelectedIndex == 1 && ddl_Phase.SelectedIndex == 2)
                {
                    double ThreePhaseAmount = 7.77;

                }
            }
        }
           
        public void txtPresent_TextChanged(object sender, EventArgs e)
        {
           
            int Prev = int.Parse(txtPrevious.Text);
            int Pres = int.Parse(txtPresent.Text);

            if(Prev>Pres)
            {
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = "Please Enter Correct Value.(Previous Meter is Greater than Present Reading)";
            }
            if (Prev < Pres)
            {
                int Unit = Pres - Prev;
                txtUnitConsume.Text = Unit.ToString();

                if(txtUnitConsume.Text==Unit.ToString())
                {
                    ddl_CustomerType.Visible = true;
                    ddl_Categories.Visible = true;
                    ddl_Phase.Visible = true;
                }
            }

        }

        protected void ddl_Phase_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Calculate();
            if (ddl_CustomerType.SelectedIndex == 1 && ddl_Phase.SelectedIndex == 2)
            {
                lblErrorMsg1.Visible = true;
                lblErrorMsg1.Text = "Low Tension Power and Three Phase  Electric Supply Cannot be Selected";
            }
            if (ddl_CustomerType.SelectedIndex == 2 && ddl_Phase.SelectedIndex == 1)
            {
                lblErrorMsg1.Visible = true;
                lblErrorMsg1.Text = "High Tension Power and Single Phase Electric Supply Cannot be Selected";
            }
        }

        public void btnCalculate_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAddress.Text = " ";
            txtAreas.Text = " ";
            txtCustomerNo.Text = " ";
            txtDutyRate.Text = " ";
            txtName.Text = " ";
            txtPresent.Text = " ";
            txtPrevious.Text = " ";
            txtTariff.Text = " ";
            txtUnitConsume.Text = " ";
            txtTotalBill.Text = " ";
            txtTaxRate.Text = " ";
            ddlYear.SelectedIndex = 0;
            ddlMonth.SelectedIndex = 0;
            ddlDay.SelectedIndex = 0;
            ddl_Province.SelectedIndex = 0;
            ddl_District.SelectedIndex = 0;
            ddl_City.SelectedIndex = 0;
            ddl_CustomerType.SelectedIndex = 0;
            ddl_Categories.SelectedIndex = 0;
            ddl_Phase.SelectedIndex = 0;
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