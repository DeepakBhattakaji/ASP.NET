using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASP_ALL_In_1.Login_Signup.Admin
{
    public partial class frm_Admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Admin WHERE AdminEmail=@AdminEmail AND AdminPassword=@AdminPassword",conn);
            conn.Open();
            cmd.Parameters.AddWithValue("AdminEmail", txtEmail.Text);
            cmd.Parameters.AddWithValue("AdminPassword", txtPassword.Text);

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(ds);

            conn.Close();

            if(ds.Tables.Count>0)
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    Session["adminEmail"]=txtEmail.Text;
                    
                    Response.Redirect("frm_AdminHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Wrong Password')<script>");
                }
            }
            else
            {
                Response.Write("<script>alert('No Any Data Found!')<script>");
            }


        }
    }
}