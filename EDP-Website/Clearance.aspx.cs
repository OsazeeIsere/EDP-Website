using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        }
    }
}