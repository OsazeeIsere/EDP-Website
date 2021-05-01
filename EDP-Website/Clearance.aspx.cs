using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
namespace EDP_Website
{
    public partial class Clearance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtaccountname.Text = Session["accountname"].ToString();
            txtamout.Text= Session["amount"].ToString();
            txtbank.Text= Session["bank"].ToString();
            txtdate.Text= Session["date"].ToString();
            txtpaymentmethod.Text= Session["paymentmethod"].ToString();
            txtteller.Text= Session["tellernumber"].ToString();
        }

        protected void giveclearance_Click(object sender, EventArgs e)
        {

            try
            {
                MailMessage msg = new MailMessage();
                msg.To.Add(Session["email"].ToString());
                msg.From = new MailAddress(Session["loginemail"].ToString());
                msg.Subject = "Payment Verified";
                msg.Body = "<h2> Print Out Your Learance Form</h2>";
                msg.IsBodyHtml = true;

                // using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 465)) { 
                SmtpClient client1 = new SmtpClient("smtp.gmail.com", 465);
                client1.EnableSsl = true;
                client1.Send(msg);

                // smtp.Host = "relay-hosting-secureserver.net";
                // smtp.Port = 25;
                //  smtp.Credentials = new System.Net.NetworkCredential("oz1.concepts@gmail.com", "prayer2JAH");
                // smtp.Send(msg);
                lbmsg.Text = "message sent successfully";

            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.ToString();
            }

        }

        protected void btnno_Click(object sender, EventArgs e)
        {
            Response.Redirect("Verification.aspx");

        }
    }
}