using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class pay : System.Web.UI.Page
    {
        settings x = new settings();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnloginpage_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            System.Data.DataTable dtmember = new System.Data.DataTable();
            dtmember = x.getdatabase("Select * From member");
            if (dtmember.Rows.Count > 0)
            {
                string user = "";
                user = txtusername.Text;
                for (int i = 0; i < dtmember.Rows.Count; i++)
                {
                    if ((dtmember.Rows[i]["username"].ToString() == txtusername.Text))
                    {
                        //&& (dtmember.Rows[i]["password"].ToString()==txtpassword.Text))
                        {
                            Response.Redirect("Payment.aspx");
                        }
                    }
                }
            }
        }

    }
}
