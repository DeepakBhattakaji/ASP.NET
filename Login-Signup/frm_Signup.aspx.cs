using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.Login_Signup
{
    public partial class frm_Signup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");

        string Id = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            autoId();
            conn.Open();

            if (!IsPostBack)
            {
                day();
                ddlDay.Items.Insert(0, "Day");
                month();
                ddlMonth.Items.Insert(0, "Month");
                year();
                ddlYear.Items.Insert(0, "Year");
            }

        }

        public void day()
        {
            int days = 32;
            for (int i = 1; i <= days; i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
        }
        public void month()
        {
            int months = 12;
            for (int i = 1; i <= months; i++)
            {
                ddlMonth.Items.Add(i.ToString());
            }

        }

        public void year()
        {
            int year = 2018;
            for (int i = 1977; i <= year; i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
        }

        public void autoId()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT Count(Id) from tbl_Reg ", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            lblAutoId.Text = Id + i.ToString();
        }
        public void clear()
        {
            txtUserName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtRePassword.Text = "";
            ddlDay.SelectedIndex = 0;
            ddlMonth.SelectedIndex = 0;
            ddlYear.SelectedIndex = 0;

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string dob = ddlDay.SelectedItem.Text + "/" + ddlMonth.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text;

            // SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Reg (UId,UserName,Email,Password,DOB)VALUES ('"+lblAutoId.Text+"','"+txtUserName.Text+"','"+txtEmail.Text+"','"+txtPassword.Text+"','"+dob.ToString()+"')", conn);
            SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Reg (UId,UserName,Email,Password,DOB)VALUES (@UId,@UserName,@Email,@Password,@DOB)", conn);
            cmd.Parameters.AddWithValue("UId", lblAutoId.Text);
            cmd.Parameters.AddWithValue("UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("DOB", dob.ToString());

            cmd.ExecuteNonQuery(); //Trigger and Query will be Fire 

            conn.Close();
            
            Response.Write("<script> alert('Data Inserted!') </script>");

            autoId();
            clear();
        }

    }
}