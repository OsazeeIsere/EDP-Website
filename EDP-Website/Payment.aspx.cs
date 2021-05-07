using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace EDP_Website
{
    public partial class Payment : System.Web.UI.Page
    {
        settings x = new settings();
        protected void Page_Load(object sender, EventArgs e)
        {
if (!IsPostBack)
            {
                BindGrid();
            }
        }

          
        //byte[] bytes =(byte[])dtmember.Rows[0]["image"];
            //string base64String = Convert.ToBase64String(bytes,0,bytes.Length);
            //Image2.ImageUrl = "data:Image/jpg;base64," + base64String;
                

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
        private void BindGrid()
        {
            System.Data.DataTable dtmember = new System.Data.DataTable();
            dtmember = x.getdatabase("Select * From member where memberid='" + Session["memberid"] + "'");
            lbmsg.Text = "You Are Welcome! " + "  " + Session["fullname"].ToString();
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["image"];
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                (e.Row.FindControl("Image1") as Image).ImageUrl = "data:image/png;base64," + base64String;
            }
        }
    }
}