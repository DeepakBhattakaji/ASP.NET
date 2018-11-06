using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1
{
    public partial class frmProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String strId = Request.QueryString["id"].ToString();
            if (strId.Equals("cat1"))
            {
                imgProduct.ImageUrl= "~\\images\\images_Products\\appleiphone.jpg";
                lblProductCate.Text = "Apple";
                lblProductName.Text = "Apple-I Phone";
                lblProductModel.Text = "I-Phone 8";
                lblProductPrice.Text = "25000";
                lblHardware.Text = "Quad core";
                lblSoftware.Text = "Xolo 7 ver";
                lblSensors.Text = "GyroSensor, Compass";
            }

            if (strId.Equals("cat2"))
            {
                imgProduct.ImageUrl = "~\\images\\images_Products\\apple_watch.jpg";
                lblProductCate.Text = "Apple";
                lblProductName.Text = "Apple Watch";
                lblProductModel.Text = "Sport Watch";
                lblProductPrice.Text = "80000";
                lblHardware.Text = "Dial-Blue ";
                lblSoftware.Text = "Not Available";
                lblSensors.Text = "Compass";
            }
        }
    }
}