using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
namespace ASP_ALL_In_1.Login_Signup
{
    public partial class frm_ShowUser_Manually : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                {
                BindData();
                }
        }

        private void BindData()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\WebAppDB.mdf;Integrated Security=True;Connect Timeout=30";
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Reg", conn);
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            htmlTable.Append("<table border='1'>");
            htmlTable.Append(
                "<tr style='background-color:green; color:white;'>" +
                "<th>UID</th>" +
                "<th>User Name</th>"+
                "<th>Email-Id</th>"+
                "<th>Date of Birth</th>"+
                "</tr>"
                );

            if(!object.Equals(ds.Tables[0],null))
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    for(int i=0; i<ds.Tables[0].Rows.Count; i++)
                    {
                        htmlTable.Append(
                            "<tr style='color:blue;'>" +
                            "<td>" + ds.Tables[0].Rows[i]["UId"]+"</td>" +
                            "<td>" + ds.Tables[0].Rows[i]["UserName"] + "</td>" +
                            "<td>" + ds.Tables[0].Rows[i]["Email"] + "</td>" +
                            "<td>" + ds.Tables[0].Rows[i]["DOB"] + "</td>" +
                            "</tr>"
                            );
                    }
                    htmlTable.Append("</table>");
                    DBDataPlaceHolder.Controls.Add(new Literal { Text = htmlTable.ToString() });

                }
                else
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append(
                        "<td align='center' colspan='4'> There is no Record.</td> </tr>"
                        );
                }
            }
        }
    }
}