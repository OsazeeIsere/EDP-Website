using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class Site1mater2 : System.Web.UI.MasterPage
    {
        settings x = new settings();
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.DataTable dtmember = new System.Data.DataTable();
            System.Data.DataTable dtpayment = new System.Data.DataTable();
            System.Data.DataTable dtpayment1 = new System.Data.DataTable();

            string status1 = "verified";
            string status2 = "Not Yet Verified";
            dtmember = x.getdatabase("Select * From member");
            dtpayment = x.getdatabase("Select * From payment where status='" + status1 +"'");
            dtpayment1 = x.getdatabase("Select * From payment where status='" + status2 + "'");
            lbmembercount.Text = dtmember.Rows.Count.ToString();
            lbverifiedpaymentcount.Text = dtpayment.Rows.Count.ToString();
            lbnotyetverifiedpayment.Text = dtpayment1.Rows.Count.ToString();
            //if (dtmember.Rows.Count > 0)
            //{
            //    lbmsg.Text = "   " + "Successfully Registered. You Are Welcome!";
            //    Session["username"] = txtusername.Text;
            //    Session["password"] = txtpassword.Text;
            //    Session["memberid"] = dtmember.Rows[0]["memberid"].ToString();
            //    Session["fullname"] = dtmember.Rows[0]["firstname"].ToString() + " " + dtmember.Rows[0]["othernames"].ToString() + " " + dtmember.Rows[0]["lastname"].ToString();
            //    Session["email"] = dtmember.Rows[0]["email"].ToString();
            //    Session["status"] = dtmember.Rows[0]["status"].ToString();
            //}
        }

        protected void btnstartreg_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}