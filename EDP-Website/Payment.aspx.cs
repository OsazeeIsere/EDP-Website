using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbmsg.Text = "You Are Welcome! " + "  " + Session["fullname"].ToString();
            byte bytes =Convert.ToByte (Session["image"].ToString());
            //string base64String = Convert.ToBase64String(bytes);
           // Image2. = "~/ImageStorage/" + bytes;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}