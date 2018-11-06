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
    public partial class frm_AdminHome : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["userEmail"] ==null)
            {
                Response.Redirect("../frm_Login.aspx");
            }
            conn.Open();

            if(!IsPostBack)
            {
                loadUserType();
                ddlUserTypeLoad.Items.Insert(0, "User Type");


                loadUserId();
               ddlUserList1.Items.Insert(0,"Select the User Id");

                fillDrop();
                ddlUserList2.Items.Insert(0, "Select the User Id");

            }
            lblAdmin.Text=Session["userEmail"].ToString();

            PanelUserList1.Visible = false;
            PanelUserList2.Visible = false;



        }
        //*******************************METHOD I************************************

        public void loadUserId()
        {
            SqlCommand cmd = new SqlCommand("SELECT UId FROM tbl_Reg", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlUserList1.DataSource = ds;
            ddlUserList1.DataBind();
           // ddlUserList1.DataTextField = "UId";
            //ddlUserList1.DataBind();

        }
        public void loadUserType()
        {
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT UserType FROM tbl_Reg", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
              ddlUserTypeLoad.DataSource = ds;
             ddlUserTypeLoad.DataBind();
           // ddlUserTypeLoad.DataTextField = "UserType";
           // ddlUserTypeLoad.DataBind();

        }

        protected void ddlUserList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelUserList1.Visible = true;
        

            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Reg WHERE UId=@userId", conn);
            cmd.Parameters.AddWithValue("userId",ddlUserList1.SelectedItem.Value);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GVUserInfo1.DataSource = ds;
            GVUserInfo1.DataBind();

           
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                txtUID.Text = reader["UId"].ToString();
                txtUserName.Text = reader["UserName"].ToString();
                txtEmail.Text = reader["Email"].ToString();
                txtDOB.Text = reader["DOB"].ToString();
                txtType.Text = reader["UserType"].ToString();
                ddlUserTypeLoad.SelectedItem.Text=reader["UserType"].ToString();
            }
            reader.Close();
        }
        //******************************************************************************

        public void TextRetrive()
        {
           
        }
//*******************************METHOD II************************************
        public void fillDrop()
        {
            ddlUserList2.DataSource = Getid();
            ddlUserList2.DataTextField = "UId";
            ddlUserList2.DataValueField = "UId";
            ddlUserList2.DataBind();
        }

        public DataSet Getid()
        {
            SqlCommand cmd = new SqlCommand("getUserId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        protected void ddlUserList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelUserList2.Visible = true;
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Reg WHERE UId=@userId", conn);
            cmd.Parameters.AddWithValue("userId", ddlUserList2.SelectedItem.Value);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GVUserInfo2.DataSource = ds;
            GVUserInfo2.DataBind();
        }

        protected void txtUpdate_Click(object sender, EventArgs e)
        {
			try{
			SqlCommand cmd = new SqlCommand("UPDATE tbl_Reg SET UserName=@UserName, Email=@Email, DOB=@DOB, UserType=@UserType WHERE UId=@UId ",conn);
            cmd.Parameters.AddWithValue("UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("DOB", txtDOB.Text);
            cmd.Parameters.AddWithValue("UserType", txtType.Text);
            cmd.Parameters.AddWithValue("UId", txtUID.Text);
			
            cmd.ExecuteNonQuery();
		    	}
			catch(Exception ex){
			throw ex;
            Response.Write("<script>alert('Exception MSG:'+'& ex.message &')</script>");
			     }
			finally{
			conn.Close();
				   }
            Response.Write("<script>alert('Data Change Sucessfully!!')</script>");

            Response.Redirect("frm_AdminHome.aspx");
        }

        protected void ddlUserTypeLoad_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadUserType();
            conn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
           
            SqlCommand cmd = new SqlCommand("DELETE FROM tbl_Reg WHERE UId=@UId",conn);
            cmd.Parameters.AddWithValue("UId", txtUID.Text);

            cmd.ExecuteNonQuery();

            conn.Close();
        }


        //******************************************************************************
    }
}