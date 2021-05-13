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
        System.Data.DataTable dtmember1 = new System.Data.DataTable();
        System.Data.DataTable dtadmin = new System.Data.DataTable();
        System.Data.DataTable dtadmin1 = new System.Data.DataTable();
        System.Data.DataTable dtadmin2 = new System.Data.DataTable();

        settings x = new settings();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["status"].ToString() == "Admin")
            {
                verificationpage.Visible = true;
                logoutpage.Visible = true;
            }
            else if (Session["status"].ToString() == "Member")
            {
                logoutpage.Visible = true;
                verificationpage.Visible = false;
            }
            System.Data.DataTable dtmember = new System.Data.DataTable();
            System.Data.DataTable dtpayment = new System.Data.DataTable();
            System.Data.DataTable dtpayment1 = new System.Data.DataTable();

            string status1 = "verified";
            string status2 = "Not Yet Verified";
            dtmember = x.getdatabase("Select * From member");
            dtpayment = x.getdatabase("Select * From payment where status='" + status1 + "'");
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
            dtadmin= x.getdatabase("Select * From member where status='" + "Admin" + "'");
            int admin1id = Convert.ToInt32(dtadmin.Rows[0]["memberid"].ToString());
            int admin2id = Convert.ToInt32(dtadmin.Rows[1]["memberid"].ToString());
            dtadmin1 = x.getdatabase("Select * From member where memberid='" + admin1id + "'");
            dtadmin2 = x.getdatabase("Select * From member where memberid='" + admin2id + "'");


            //first member
            dlvimage.DataSource = dtadmin1;
            dlvimage.DataBind();
            lbfirstname.Text = dtadmin1.Rows[0]["firstname"].ToString() + " " + dtadmin1.Rows[0]["othernames"].ToString() + " " + dtadmin1.Rows[0]["lastname"].ToString();
            lbstatus.Text = dtadmin1.Rows[0]["status"].ToString();
            //second member
            dlvadmin_2.DataSource = dtadmin2;
            dlvadmin_2.DataBind();
            lbadmin2firstname.Text = dtadmin2.Rows[0]["firstname"].ToString() + " " + dtadmin2.Rows[0]["othernames"].ToString() + " " + dtadmin2.Rows[0]["lastname"].ToString();
            lbadmin2status.Text = dtadmin2.Rows[0]["status"].ToString();
            //third member
            dtmember1 = x.getdatabase("Select * From member where status='" + "Member" + "'");
            int member3 =Convert.ToInt32(dtmember1.Rows[0]["memberid"].ToString());
            member3img.ImageUrl= "~/ImageStorage/" + "_" + dtmember1.Rows[0]["memberid"] + "_" + dtmember1.Rows[0]["image"];
            lbmember3name.Text= dtmember1.Rows[0]["firstname"].ToString() + " " + dtmember1.Rows[0]["othernames"].ToString() + " " + dtmember1.Rows[0]["lastname"].ToString();
            lbmember3status.Text= dtmember1.Rows[0]["status"].ToString();

            // Fourth member
            int member4 = Convert.ToInt32(dtmember1.Rows[1]["memberid"].ToString());
            member4img.ImageUrl = "~/ImageStorage/" + "_" + dtmember1.Rows[1]["memberid"] + "_" + dtmember1.Rows[1]["image"];
            lbmember4name.Text = dtmember1.Rows[1]["firstname"].ToString() + " " + dtmember1.Rows[1]["othernames"].ToString() + " " + dtmember1.Rows[1]["lastname"].ToString();
            lbmember4status.Text = dtmember1.Rows[1]["status"].ToString();

            //int member5 = Convert.ToInt32(dtmember1.Rows[2]["memberid"].ToString());
            //int member6 = Convert.ToInt32(dtmember1.Rows[3]["memberid"].ToString());
            //int member7 = Convert.ToInt32(dtmember1.Rows[4]["memberid"].ToString());
            //int member8 = Convert.ToInt32(dtmember1.Rows[5]["memberid"].ToString());


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

            protected void dlvimage_ItemDataBound(object sender, DataListItemEventArgs e)
            {
                System.Data.DataTable dtmember1 = new System.Data.DataTable();
                dtmember1 = x.getdatabase("Select * From member where memberid='" + Session["memberid"] + "'");

                (e.Item.FindControl("Image2") as Image).ImageUrl = "~/ImageStorage/" + "_" + dtadmin.Rows[0]["memberid"] + "_" + dtadmin.Rows[0]["image"];

            }

        protected void dlvadmin_2_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            (e.Item.FindControl("admin2img") as Image).ImageUrl = "~/ImageStorage/" + "_" + dtadmin.Rows[1]["memberid"] + "_" + dtadmin.Rows[1]["image"];

        }
    }
}