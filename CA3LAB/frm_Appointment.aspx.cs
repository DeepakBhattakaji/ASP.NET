using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ASP_ALL_In_1.CA3LAB
{
    public partial class frm_Appointment : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\db_Hospital.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void clear()
        {
            lbl_AadharCard.Text = " ";
            lbl_Dob.Text = " ";
            lbl_PhoneNo.Text = " ";
            lbl_PName.Text = " ";
            txtPID.Text = " ";
            lbl_Age.Text = " ";        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
        

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_PatientReg WHERE Id=@id ", conn);
            cmd.Parameters.AddWithValue("id", txtPID.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();

            if(ds.Tables.Count>0)
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    
                    lbl_PName.Text = ds.Tables[0].Rows[0]["Patient_Name"].ToString();
                    lbl_AadharCard.Text = ds.Tables[0].Rows[0]["Aadhar_Card"].ToString();
                    lbl_PhoneNo.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
                  string  yyyy = ds.Tables[0].Rows[0]["DOBYYYY"].ToString();
                    string mm = ds.Tables[0].Rows[0]["DOBMM"].ToString();
                    string dd = ds.Tables[0].Rows[0]["DOBDD"].ToString();

                    string DOB = yyyy.ToString() + "/"+ mm.ToString() + "/" + dd.ToString();
                    lbl_Dob.Text = DOB.ToString();

                    int age = 2018- Convert.ToInt32(yyyy.ToString());
                    lbl_Age.Text = age.ToString();

                    Response.Write("<script>alert('Search Record Found Successfully!!')</script>");

                }

                else
                {
                    Response.Write("<script>alert('Search Record Not Found!!')</script>");
                    clear();
                }
            }
            else
            {
                Response.Write("<script>alert('Table Not Found!!')</script>");
            }

          
        }
    }
}