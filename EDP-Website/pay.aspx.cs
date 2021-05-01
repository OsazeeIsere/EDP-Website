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
                    if ((dtmember.Rows[i]["username"].ToString().ToUpper() == (txtusername.Text).ToUpper()))
                    {
                        //&& (dtmember.Rows[i]["password"].ToString()==txtpassword.Text))
                        {
                            Session["username"] = txtusername.Text;
                            Session["password"] = txtpassword.Text;
                            Session["memberid"] = dtmember.Rows[i]["memberid"].ToString();
                            Session["fullname"] = dtmember.Rows[i]["firstname"].ToString() + " " + dtmember.Rows[i]["othernames"].ToString() + " " + dtmember.Rows[i]["lastname"].ToString();
                            Session["email"] = dtmember.Rows[i]["email"].ToString();
                            Session["status"] = dtmember.Rows[i]["status"].ToString();

                            //Session["institution"] = txtinstitution.Text;

                            Response.Redirect("Payment.aspx");
                        }
                    }
                }
            }
        }

    }
}
