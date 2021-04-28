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
                    string sexvalue = "";
                    x.adddata("Insert Into payment(accountname,bank,paymentmethod,tellernumber,date,amount,firstname,lastname,email) Values('" + txtaccountname.Text + "','" + ddlbank.Text + "','" + ddlmethod.Text + "','" + txtteller.Text + "','" + txtdate.Text + "','" + txtamout.Text + "','" + "Jason" + "','" + "Osazee" + "','" + "oz1.concepts@gmail.com" + "')");
                     }
            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.ToString();
            }
            lbmsg.Text ="Payment Details Sucessfully Uploaded";

        }
    }
}