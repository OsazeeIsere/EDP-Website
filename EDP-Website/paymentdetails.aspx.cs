using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class paymentdetails : System.Web.UI.Page
    {
        settings x = new settings();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbmsg.Text =  Session["fullname"].ToString();
        }

        protected void uploadpmtdetails_Click(object sender, EventArgs e)
        {

            try
            {
                //System.Data.DataTable dtgetdepartment = new System.Data.DataTable();
                

                // dtgetdepartment = getdatabase("Select * From department");
                if (string.IsNullOrEmpty(txtaccountname.Text))
                {
                    // lbmsg.Text = "Please Enter the Course Code";
                }
                //else if (string.IsNullOrEmpty(txtcoursetitle.Text))
                //{
                //    lbmsg.Text = "Please Enter the Course Title";
                //}
                //else if (string.IsNullOrEmpty(ddllevel.Text))
                //{
                //    lbmsg.Text = "Please Select the Curent Level";
                //}
                //else if (string.IsNullOrEmpty(ddlsemester.Text))
                //{
                //    lbmsg.Text = "Please Select the Curent Session";
                //}
                else
                {
                    x.adddata("Insert Into payment(accountname,bank,paymentmethod,tellernumber,date,amount,fullname,email,status) Values('" + txtaccountname.Text + "','" + ddlbank.Text + "','" + ddlmethod.Text + "','" + txtteller.Text + "','" + txtdate.Text + "','" + txtamout.Text + "','" + Session["fullname"].ToString() + "','" + Session["email"].ToString() + "','" + "Not Yet Verified" + "')");
                    lbmsg.Text = Session["fullname"].ToString() + "!"+"  " + "Your Payment Details are Sucessfully Uploaded";
                    txtaccountname.Text = "";
                    txtamout.Text = "";
                    txtdate.Text = "";
                    txtteller.Text = "";
                    ddlbank.Text = "";
                    ddlmethod.Text = "";
                }
            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.ToString();
            }

        }
    }
}