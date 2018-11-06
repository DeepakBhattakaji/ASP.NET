using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace ASP_ALL_In_1.Login_Signup
{
    public partial class frm_ShowUser : System.Web.UI.Page
    {
      //  SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");
        
        protected void Page_Load(object sender, EventArgs e)
        {
           // conn.Open();
            //RetriveUser();
        }

        //public void RetriveUser()
        //{
        //    SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Reg", conn);

        //    SqlDataReader reader = cmd.ExecuteReader();

        //    reader.Read();
        //    lblUserId.Text = reader["UId"].ToString();
        //    lblUserName.Text = reader["UserName"].ToString();
        //    lblEmail.Text = reader["Email"].ToString();
        //    lblDOB.Text = reader["DOB"].ToString();
        //   // cmd.ExecuteNonQuery();

        //    reader.Close();
        //    conn.Close();

        //}
    }
}