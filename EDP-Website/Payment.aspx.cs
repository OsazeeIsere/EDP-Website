﻿using System;
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

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}