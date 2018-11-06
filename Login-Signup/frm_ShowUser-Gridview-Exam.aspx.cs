using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//1. How to bind the data in grid view by using code. Write complete all code.
//OR Display EmpComplete Details in Gridview controll.
//OR How to retrive data from database/Backend by using Gridview.
namespace ASP_ALL_In_1.Login_Signup
{
    public partial class frm_ShowUser_Gridview_Exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getData();
            }
        }

        public void getData()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Reg",conn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            if(ds.Tables.Count>0)
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    gvDisplay.DataSource = ds;
                    gvDisplay.DataBind();
                }
            }
        }
    }
}