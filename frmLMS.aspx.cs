using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPCA1DBK
{
    public partial class LMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PanelBooksList0.Visible = false;
                //   PanelBDetails0.Visible = false;
            }
        }

        protected void ddlBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlBooks.SelectedItem.Text== "Computer Science")
            {
                PanelBooksList0.Visible = true;
                
                lblBookCate0.Text = "ASP.NET";
                

                BCate0.Text = "ASP.NET";
                Bname1.Text = "Beginning With ASP.NET";
                BAuthor1.Text = "Deepak Bhatta";
                BPrice1.Text = "5000";
                BPub3.Text = "B Group Of Technology";
                BDate.Text = "2018-August-24";

                lblBookCate1.Text = "JAVA";
                BCate1.Text = "JAVA";
                Bname3.Text = "Black Book - JAVA";
                BAuthor3.Text = "Divya Dev Bhatta";
                BPrice3.Text = "3500";
                BPub7.Text = "AK 47";
                BDate2.Text = "2018-August-20";

            }

            if (ddlBooks.SelectedItem.Text == "Electrical Engg")
            {
                PanelBooksList0.Visible = true;
                
                lblBookCate0.Text = "FEE";
                
                BCate0.Text = "FEE";
                Bname1.Text = "Fundamental of E&E";
                BAuthor1.Text = "ABC";
                BPrice1.Text = "10000";
                BPub3.Text = "S Group";
                BDate.Text = "2018-August-10";

                lblBookCate1.Text = "Electrical Enginer";
                BCate1.Text = "E & E Books";
                Bname3.Text = "S Chanda";
                BAuthor3.Text = "Divya";
                BPrice3.Text = "8500";
                BPub7.Text = "Shai Ram";
                BDate2.Text = "2018-August-15";

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            PanelBDetails0.Visible = true;
            if ((txtSearch.Text=="ASP.NET")||(txtSearch.Text=="asp.net"))
            {

                BID.Text = 1+"";
                Bname2.Text = "Beginning With ASP.NET";
                BAuthor2.Text = "Deepak Bhatta";
                BPrice2.Text = "5000";
                BPub5.Text = "B Group Of Technology";
                BDate6.Text = "2018-August-24";
            }

            if ((txtSearch.Text == "JAVA") || (txtSearch.Text == "java"))
            {

                BID.Text = 1 + "";
                Bname2.Text = "Beginning With ASP.NET";
                BAuthor2.Text = "Deepak Bhatta";
                BPrice2.Text = "5000";
                BPub5.Text = "B Group Of Technology";
                BDate6.Text = "2018-August-24";
            }


            if ((txtSearch.Text == "FEE") || (txtSearch.Text == "fee"))
            {

                BID.Text = 1 + "";
                Bname2.Text = "Fundamental of E&E";
                BAuthor2.Text = "ABC";
                BPrice2.Text = "10000";
                BPub5.Text = "BS Group";
                BDate6.Text = "2018-August-10";
            }

            if ((txtSearch.Text == "Electrical") || (txtSearch.Text == "electrical"))
            {
                BID.Text = 1 + "";
                Bname2.Text = "Beginning With ASP.NET";
                BAuthor2.Text = " Chanda";
                BPrice2.Text = "8500";
                BPub5.Text = "Shai Ram";
                BDate6.Text = "2018-August-15";

            }
        }

        public void btnAdd_Click(object sender, EventArgs e)
        {
            BID.Text = int.Parse(BID.Text)+1+"";
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