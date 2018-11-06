using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace ASP_ALL_In_1
{
    public partial class frm_Signup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
            for(int i=1; i<=days;i++)
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
            for(int i=1977; i<=year;i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Reg (Id,UserName,Email,Password,Re-Password,DOB)VALUES (@Id,@UserName,@Email,@Password,@Re-Password,@DOB)", conn);

            cmd.Parameters.AddWithValue("id",null);

            cmd.Parameters.AddWithValue("FirstName", txtUserName.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("Re-Password", txtRePassword.Text);
            cmd.Parameters.AddWithValue("DOB", ddlDay.SelectedItem.Text + "/" + ddlMonth.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text);



            cmd.ExecuteNonQuery(); //Trigger and Query will be Fire 

            conn.Close();

            Response.Write("<script> alert('Data Inserted!') </script>");



        }
    }
}