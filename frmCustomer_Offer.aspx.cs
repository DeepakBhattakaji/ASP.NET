using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1
{
    public partial class Cusomer_Offer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                Quantity();
                ddlSelectQuantity.Items.Insert(0, "Select the Quantity :");
            }

            Label6.Visible = false;
            Label8.Visible = false;
            lblDiscount.Visible = false;
            Label19.Visible = false;

        }

        public void Quantity()
        {
            int total_qty = 5;
            for(int i=1;i<=total_qty;i++)
            {
                ddlSelectQuantity.Items.Add(i.ToString());
            }
        }

    
        protected void ddlSelectItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlSelectItem.SelectedIndex==1)
            {
                int price1 = 5500;
                lblitemPrice.Text = price1.ToString();
            }
            if (ddlSelectItem.SelectedIndex == 2)
            {
                int price2 = 4500;
                lblitemPrice.Text = price2.ToString();
            }
            if (ddlSelectItem.SelectedIndex == 3)
            {
                int price3 = 3500;
                lblitemPrice.Text = price3.ToString();
            }
            if (ddlSelectItem.SelectedIndex == 4)
            {
                int price4 = 2500;
                lblitemPrice.Text = price4.ToString();
            }
        }

        protected void ddlSelectQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSelectQuantity.SelectedIndex == 1)
            {
                lblQuantity.Text = "1";
                int total=Int32.Parse(lblitemPrice.Text)*Int32.Parse(lblQuantity.Text);
                lblTotalPrice.Text = total.ToString();
            }
            if (ddlSelectQuantity.SelectedIndex == 2)
            {
                lblQuantity.Text = "2";
                int total = Int32.Parse(lblitemPrice.Text) * Int32.Parse(lblQuantity.Text);
                lblTotalPrice.Text = total.ToString();

            }
            if (ddlSelectQuantity.SelectedIndex == 3)
            {
                lblQuantity.Text = "3";
                int total = Int32.Parse(lblitemPrice.Text) * Int32.Parse(lblQuantity.Text);
                lblTotalPrice.Text = total.ToString();

            }
            if (ddlSelectQuantity.SelectedIndex == 4)
            {
                lblQuantity.Text = "4";
                int total = Int32.Parse(lblitemPrice.Text) * Int32.Parse(lblQuantity.Text);
                lblTotalPrice.Text = total.ToString();

            }
            if (ddlSelectQuantity.SelectedIndex == 5)
            {
                lblQuantity.Text = "5";
                int total = Int32.Parse(lblitemPrice.Text) * Int32.Parse(lblQuantity.Text);
                lblTotalPrice.Text = total.ToString();

            }

        }


        protected void btnBuy_Click(object sender, EventArgs e)
        {
          

        }

        protected void txtCustomerAge_TextChanged(object sender, EventArgs e)
        {
            Label6.Visible = true;
            Label8.Visible = true;
            lblDiscount.Visible = true;

            int age = int.Parse(txtCustomerAge.Text);
            if (age > 0 && age < 16)
            {
                if (int.Parse(lblTotalPrice.Text) >= 10000)
                {
                    Label19.Visible = false;

                    lblDiscount.Text = "10";
                    float disc = ((Int32.Parse(lblTotalPrice.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                    float netamount = Int32.Parse(lblTotalPrice.Text) - disc;
                    lblNetAmount.Text = netamount.ToString();
                }
                else
                {
                    Label19.Visible = true;
                    lblDiscount.Text = "0";
                    float disc = ((Int32.Parse(lblTotalPrice.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                    float netamount = Int32.Parse(lblTotalPrice.Text) - disc;
                    lblNetAmount.Text = netamount.ToString();

                }

            }
            if (age >= 16)
            {
                if (int.Parse(lblTotalPrice.Text) >= 10000)
                {
                    Label19.Visible = false;

                    lblDiscount.Text = "15";
                    float disc = ((Int32.Parse(lblTotalPrice.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                    float netamount = Int32.Parse(lblTotalPrice.Text) - disc;
                    lblNetAmount.Text = netamount.ToString();
                }
                else
                {
                    Label19.Visible = true;

                    lblDiscount.Text = "0";
                    float disc = ((Int32.Parse(lblTotalPrice.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                    float netamount = Int32.Parse(lblTotalPrice.Text) - disc;
                    lblNetAmount.Text = netamount.ToString();

                }

            }

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