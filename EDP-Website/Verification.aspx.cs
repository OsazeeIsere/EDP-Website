using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class Verification : System.Web.UI.Page
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
            dtpayment = x.getdatabase("Select * From payment where status='" + status1 + "'");
            dtpayment1 = x.getdatabase("Select paymentid,accountname,bank,paymentmethod,tellernumber,date,amount,status From payment where status='" + status2 + "'");
            lbmembercount.Text = dtmember.Rows.Count.ToString();
            lbverifiedpaymentcount.Text = dtpayment.Rows.Count.ToString();
            lbnotyetverifiedpayment.Text = dtpayment1.Rows.Count.ToString();
            gvpayment.DataSource = dtpayment1;
            gvpayment.DataBind();
        }

        protected void btnstartreg_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void gvpayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(gvpayment.SelectedDataKey["paymentid"]);
            System.Data.DataTable dtmember = new System.Data.DataTable();
            dtmember = x.getdatabase("Select * From payment where paymentid="+ id +"");
            if (dtmember.Rows.Count > 0)
            {
                string user = "";
               
                   //&& (dtmember.Rows[i]["password"].ToString()==txtpassword.Text))
                        {
                           Session["paymentid"] = id;
                           Session["memberid"] = dtmember.Rows[0]["memberid"].ToString();
                            Session["fullname"] = dtmember.Rows[0]["fullname"].ToString();
                            Session["email"] = dtmember.Rows[0]["email"].ToString();
                            Session["status"] = dtmember.Rows[0]["status"].ToString();
                            Session["accountname"] = dtmember.Rows[0]["accountname"].ToString();
                            Session["bank"] = dtmember.Rows[0]["bank"].ToString();
                            Session["paymentmethod"] = dtmember.Rows[0]["paymentmethod"].ToString();
                            Session["tellernumber"] = dtmember.Rows[0]["tellernumber"].ToString();
                            Session["date"] = dtmember.Rows[0]["date"].ToString();
                            Session["amount"] = dtmember.Rows[0]["amount"].ToString();

                    //Session["institution"] = txtinstitution.Text;
                    Response.Redirect("Clearance.aspx");
                        }
                   
                
            }
        }
    }
    }
