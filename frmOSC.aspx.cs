using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1
{
    public partial class frmOSC : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            //   Response.Redirect(Request.RawUrl, true);


            if (!IsPostBack)
            {

                mobileDetails.Visible = false;
                CatName.Visible = false;
                AddedtoCart.Visible = false;

                btnRemove1.Visible = false;
                btnRemove2.Visible = false;
                btnRemove3.Visible = false;
                btnRemove4.Visible = false;

                lblItem1.Visible = false;
                lblItem2.Visible = false;
                lblItem3.Visible = false;
                lblItem4.Visible = false;

                lblPrice1.Visible = false;
                lblPrice2.Visible = false;
                lblPrice3.Visible = false;
                lblPrice4.Visible = false;

                txtItem1.Visible = false;
                txtItem2.Visible = false;
                txtItem3.Visible = false;
                txtItem4.Visible = false;

                Label18.Visible = false;
                Label19.Visible = false;
                lblDiscount.Visible = false;
                Label24.Visible = false;



                lblPrice1.Text = "0";
                txtItem1.Text = "0";
                lblPrice2.Text = "0";
                txtItem2.Text = "0";
                lblPrice3.Text = "0";
                txtItem3.Text = "0";
                lblPrice4.Text = "0";
                txtItem4.Text = "0";


            }

        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            mobileDetails.Visible = true;
            CatName.Visible = true;


            if (ddlCategory.SelectedItem.Text == "Apple")
            {
                lblCatName.Text = "Apple - Products";

                imgC1.ImageUrl = "~\\images\\images_Products\\appleiphone.jpg";
                lblCatItem1.Text = "Apple I-phone";
                lblItemModel1.Text = "I-Phone 8";
                lblItemPrice1.Text = "150000";

                imgC2.ImageUrl = "~\\images\\images_Products\\apple_watch.jpg";
                lblCatItem2.Text = "Apple Watch";
                lblItemModel2.Text = "Sport Band";
                lblItemPrice2.Text = "80000";

                imgC3.ImageUrl = "~\\images\\images_Products\\applePrinter.jpg";
                lblCatItem3.Text = "Apple Printers";
                lblItemModel3.Text = "A12-Zollo";
                lblItemPrice3.Text = "250000";

                imgC4.ImageUrl = "~\\images\\images_Products\\applelaptop.jpg";
                lblCatItem4.Text = "Apple Laptops";
                lblItemModel4.Text = "Mac Air Pro";
                lblItemPrice4.Text = "95000";

            }
            if (ddlCategory.SelectedItem.Text == "Samsung")
            {

                lblCatName.Text = "Samsung - Products";

                imgC1.ImageUrl = "~\\images\\images_Products\\samsung_mobile.jpg";
                lblCatItem1.Text = "Samsung Mobile";
                lblItemModel1.Text = "Samsung Galaxy J7";
                lblItemPrice1.Text = "15000";

                imgC2.ImageUrl = "~\\images\\images_Products\\samsung_watch.jpg";
                lblCatItem2.Text = "Samsung Smart Watch";
                lblItemModel2.Text = "SMG 2901";
                lblItemPrice2.Text = "20000";

                imgC3.ImageUrl = "~\\images\\images_Products\\samsung_printer.jpg";
                lblCatItem3.Text = "Samsung Printers";
                lblItemModel3.Text = "SMG 1500";
                lblItemPrice3.Text = "45000";

                imgC4.ImageUrl = "~\\images\\images_Products\\samsung_laptop.jpg";
                lblCatItem4.Text = "Samsung Laptops";
                lblItemModel4.Text = "Samsung Pro 12";
                lblItemPrice4.Text = "120000";

            }

            if (ddlCategory.SelectedItem.Text == "LG")
            {

                lblCatName.Text = "LG - Products";

                imgC1.ImageUrl = "~\\images\\images_Products\\lg_mobile.png";
                lblCatItem1.Text = "LG Mobile";
                lblItemModel1.Text = "NEXUS 5X LG";
                lblItemPrice1.Text = "31990";

                imgC2.ImageUrl = "~\\images\\images_Products\\lg_tv.jpg";
                lblCatItem2.Text = "LG LED TV";
                lblItemModel2.Text = "LG 32:24";
                lblItemPrice2.Text = "80000";

                imgC3.ImageUrl = "~\\images\\images_Products\\lg_printer.jpg";
                lblCatItem3.Text = "LG Printers";
                lblItemModel3.Text = "LG Pocket Photo Printer";
                lblItemPrice3.Text = "42000";

                imgC4.ImageUrl = "~\\images\\images_Products\\lg_monitor1.jpg";
                lblCatItem4.Text = "LG Monitors";
                lblItemModel4.Text = "LG 1212";
                lblItemPrice4.Text = "6000";

            }

        }
        private bool btnCart1Clicked = false;
        private bool btnCart2Clicked = false;
        private bool btnCart3Clicked = false;
        private bool btnCart4Clicked = false;

        private bool btnRemove1Clicked = false;
        private bool btnRemove2Clicked = false;
        private bool btnRemove3Clicked = false;
        private bool btnRemove4Clicked = false;
        protected void btnCat1_Click(object sender, EventArgs e)
        {
            btnCart1Clicked = true;
            AddedtoCart.Visible = true;
            if (btnCart1Clicked)
            {
                btnCat1.Visible = false;

                lblItem1.Visible = true;
                lblPrice1.Visible = true;
                txtItem1.Visible = true;
                btnRemove1.Visible = true;

                lblItem1.Text = lblCatItem1.Text;
                lblPrice1.Text = lblItemPrice1.Text;
                txtItem1.Text = "1";
            }
            else
            {
                lblPrice1.Text = "0";
                txtItem1.Text = "0";
            }
        }

        protected void btnCat2_Click(object sender, EventArgs e)
        {
            btnCart2Clicked = true;
            AddedtoCart.Visible = true;
            if (btnCart2Clicked)
            {
                btnCat2.Visible = false;

                lblItem2.Visible = true;
                lblPrice2.Visible = true;
                txtItem2.Visible = true;
                btnRemove2.Visible = true;

                lblItem2.Text = lblCatItem2.Text;
                lblPrice2.Text = lblItemPrice2.Text;
                txtItem2.Text = "1";
            }
            else
            {
                lblPrice2.Text = "0";
                txtItem2.Text = "0";
            }
        }

        protected void btnCat3_Click(object sender, EventArgs e)
        {
            btnCart3Clicked = true;
            AddedtoCart.Visible = true;
            if (btnCart3Clicked)
            {
                btnCat3.Visible = false;

                lblItem3.Visible = true;
                lblPrice3.Visible = true;
                txtItem3.Visible = true;
                btnRemove3.Visible = true;

                lblItem3.Text = lblCatItem3.Text;
                lblPrice3.Text = lblItemPrice3.Text;
                txtItem3.Text = "1";
            }
            else
            {
                lblPrice3.Text = "0";
                txtItem3.Text = "0";
            }
        }

        protected void btnCat4_Click(object sender, EventArgs e)
        {
            btnCart4Clicked = true;
            AddedtoCart.Visible = true;
            if (btnCart4Clicked)
            {
                btnCat4.Visible = false;

                lblItem4.Visible = true;
                lblPrice4.Visible = true;
                txtItem4.Visible = true;
                btnRemove4.Visible = true;

                lblItem4.Text = lblCatItem4.Text;
                lblPrice4.Text = lblItemPrice4.Text;
                txtItem4.Text = "1";
            }
            else
            {
                lblPrice4.Text = "0";
                txtItem4.Text = "0";
            }
        }


        protected void btnRemove1_Click(object sender, EventArgs e)
        {
            btnRemove1Clicked = true;
            if (btnRemove1Clicked)
            {
                btnCat1.Visible = true;

                lblItem1.Visible = false;
                lblPrice1.Visible = false;
                txtItem1.Visible = false;
                btnRemove1.Visible = false;

                lblItem1.Text = "";
                lblPrice1.Text = "0";
                txtItem1.Text = "0";

            }
        }


        protected void btnRemove2_Click(object sender, EventArgs e)
        {
            btnRemove2Clicked = true;
            if (btnRemove2Clicked)
            {
                btnCat2.Visible = true;

                lblItem2.Visible = false;
                lblPrice2.Visible = false;
                txtItem2.Visible = false;
                btnRemove2.Visible = false;

                lblItem2.Text = "";
                lblPrice2.Text = "0";
                txtItem2.Text = "0";

            }
        }

        protected void btnRemove3_Click(object sender, EventArgs e)
        {
            btnRemove3Clicked = true;
            if (btnRemove3Clicked)
            {
                btnCat3.Visible = true;

                lblItem3.Visible = false;
                lblPrice3.Visible = false;
                txtItem3.Visible = false;
                btnRemove3.Visible = false;

                lblItem3.Text = "";
                lblPrice3.Text = "0";
                txtItem3.Text = "0";

            }
        }

        protected void btnRemove4_Click(object sender, EventArgs e)
        {
            btnRemove4Clicked = true;
            if (btnRemove4Clicked)
            {
                btnCat4.Visible = true;

                lblItem4.Visible = false;
                lblPrice4.Visible = false;
                txtItem4.Visible = false;
                btnRemove4.Visible = false;

                lblItem4.Text = "";
                lblPrice4.Text = "0";
                txtItem4.Text = "0";

            }
        }

        public void btnBuy_Click(object sender, EventArgs e)
        {

            //if ((!btnCart1Clicked) || (!btnCart2Clicked) || (!btnCart3Clicked) || (!btnCart4Clicked))
            //{
            //    lblNoItemError.Visible = true;
            //    lblNoItemError.Text = "No Items are added in the shopping cart. Please add atleast one item to proceed.";
            //}
            //else
            //{


            try
            {


                int price1 = int.Parse(lblItemPrice1.Text);
                int price2 = int.Parse(lblItemPrice2.Text);
                int price3 = int.Parse(lblItemPrice3.Text);
                int price4 = int.Parse(lblItemPrice4.Text);

                int qty1 = Convert.ToInt32(txtItem1.Text);
                int qty2 = Convert.ToInt32(txtItem2.Text);
                int qty3 = Convert.ToInt32(txtItem3.Text);
                int qty4 = Convert.ToInt32(txtItem4.Text);



                int calc = (price1 * qty1) + (price2 * qty2) + (price3 * qty3) + (price4 * qty4);

                lblTotalAmount.Text = calc.ToString();

                int age = int.Parse(txtCustomerAge.Text);

                if (age>0 && age < 16)
                {
                    if (int.Parse(lblTotalAmount.Text) >= 100000)

                    {
                        Label24.Visible = false;
                        lblDiscount.Text = "10";
                        float disc = ((Int32.Parse(lblTotalAmount.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                        float netamount = Int32.Parse(lblTotalAmount.Text) - disc;
                        lblNetAmount.Text = netamount.ToString();
                        lblDiscAmount.Text = disc.ToString();
                    }
                    else
                    {
                        Label24.Visible = true;
                        lblDiscount.Text = "0";
                        float disc = ((Int32.Parse(lblTotalAmount.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                        float netamount = Int32.Parse(lblTotalAmount.Text) - disc;
                        lblNetAmount.Text = netamount.ToString();
                        lblDiscAmount.Text = disc.ToString();
                    }


                }
                if (age >= 16)
                {
                    if (int.Parse(lblTotalAmount.Text) >= 100000)
                    {
                    Label24.Visible = false;
                    lblDiscount.Text = "15";
                    float disc = ((Int32.Parse(lblTotalAmount.Text)) * (Int32.Parse(lblDiscount.Text)))/100;
                    float netamount = Int32.Parse(lblTotalAmount.Text) - disc;
                    lblNetAmount.Text = netamount.ToString();
                    lblDiscAmount.Text = disc.ToString();
                    }
                    else
                    {
                        Label24.Visible = true;
                        lblDiscount.Text = "0";
                        float disc = ((Int32.Parse(lblTotalAmount.Text)) * (Int32.Parse(lblDiscount.Text))) / 100;
                        float netamount = Int32.Parse(lblTotalAmount.Text) - disc;
                        lblNetAmount.Text = netamount.ToString();
                        lblDiscAmount.Text = disc.ToString();
                    }

                }


                Label23.Text = "("+lblDiscount.Text + "% Offer!)";


            }
            // }
            catch (Exception)
            {

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

        protected void tblLinkbtn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductDetails.aspx?id=cat1");
        }

        protected void tblLinkbtn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductDetails.aspx?id=cat2");
        }

        protected void tblLinkbtn3_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductDetails.aspx?id=cat3");
        }

        protected void tblLinkbtn4_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductDetails.aspx?id=cat4");
        }

        public void txtCustomerAge_TextChanged(object sender, EventArgs e)
        {
            Label18.Visible = true;
            Label19.Visible = true;
            lblDiscount.Visible = true;

            int age = int.Parse(txtCustomerAge.Text);
            if (age > 0 && age < 16)
            {
                lblDiscount.Text = "10";
            }
            if (age >= 16)
            {
                lblDiscount.Text = "15";
            }
        }

    }
}