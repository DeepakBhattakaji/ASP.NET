using System;

// call the Name spaces
using System.Data;
using System.Data.SqlClient;

namespace ASP_ALL_In_1.MasterPages_and_UserControl
{
    public partial class frm_User_Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int count = 2;
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();

           // SqlCommand cmd = new SqlCommand("INSERT INTO tbl_UserReg (Id,FirstName,MiddleName,LastName,Email,Password,Phone)VALUES (@Id,@FirstName,@MiddleName,@LastName,@Email,@Password,@Phone)",conn);

            // cmd.Parameters.AddWithValue("id", count);

            // count++;
            SqlCommand cmd = new SqlCommand("INSERT INTO tbl_UserReg (FirstName,MiddleName,LastName,Email,Password,Phone)VALUES (@FirstName,@MiddleName,@LastName,@Email,@Password,@Phone)", conn);

            cmd.Parameters.AddWithValue("FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("MiddleName", txtMiddleName.Text);
            cmd.Parameters.AddWithValue("LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("Phone", txtPhone.Text);

            cmd.ExecuteNonQuery(); //Trigger and Query will be Fire 

            conn.Close();

            Response.Write("<script> alert('Data Inserted!') </script>");



        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frm_Display_Data.aspx");
        }
    }
}