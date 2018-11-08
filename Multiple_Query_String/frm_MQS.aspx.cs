using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.Multiple_Query_String
{
    public partial class frm_MQS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string USERNAME = txtUserName.Text;
            string EMAIL = txtEmail.Text;
            string PHONE = txtPhone.Text;

            /*Server.Transfer will be secure while transfering the data. 
             * It is secure for sensitive data like, POST METHOD
             * DATA CANNOT BE SEEN IN THE URL ADDRESS*/

            Server.Transfer("frm_HomeMQS.aspx?uName=" + USERNAME + "&uEmail=" + EMAIL + "&uPhone=" + PHONE);

            /*Response.Redirect will not be secure while transfering the data. 
             * It is not secure for sensitive data It is like, GET METHOD
             * URL DATA CAN BE SEEN IN THE URL ADDRESS*/

            // Response.Redirect("frm_HomeMQS.aspx?uName="+USERNAME+"&uEmail="+EMAIL+"&uPhone="+PHONE);
        }
    }
}