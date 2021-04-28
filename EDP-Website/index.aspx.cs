using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class index : System.Web.UI.Page
    {
        settings x = new settings();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Reference the DropDownList.
                //Determine the Current Year.
                var currentYear = DateTime.Now.Year;
                ddlyearofreg.Items.Add("Select Your Year Of Registration");
                //Loop and add the Year values to DropDownList.
                for (var i = 1950; i <= currentYear; i++)
                {
                    ddlyearofreg.Items.Add(i.ToString());
                }

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            try
            {
                System.Data.DataTable dtgetdepartment = new System.Data.DataTable();
                System.Data.DataTable dtgetstudent = new System.Data.DataTable();


                // dtgetdepartment = getdatabase("Select * From department");
                if (string.IsNullOrEmpty(txtfirstname.Text))
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
                    if (rdbmale.Checked == true)
                    {
                        sexvalue = "Male";
                    }
                    else
                    {
                        sexvalue = "Female";
                    }
                    x.adddata("Insert Into member(firstname,lastname,username,password,pcnnumber,yearofregistration,area,phone,email,state,sex) Values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtregusername.Text + "','" + txtregpassword.Text + "','" + txtpcn.Text + "','" + ddlyearofreg.Text + "','" + txtareaofpractice.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + ddlstates.Text + "','" + sexvalue + "')");
                    //    x.audit(Convert.ToString(Session["username"]), "courses", "all", "Course Creation", Convert.ToInt32(Session["adminid"]));
                    //    txtcoursecode.Text = "";
                    //    txtcoursetitle.Text = "";
                    //    txtcoursecode.Text = "";
                    //    lbmsg.Text = "The Course is Registered";
                }
            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.ToString();
            }


            //lbmsgsuccess.Text = "Successful";
        }

        protected void btnstartreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("pay.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
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
                    if ((dtmember.Rows[i]["username"].ToString() == txtusername.Text))
                    {
                        //&& (dtmember.Rows[i]["password"].ToString()==txtpassword.Text))
                        {
                            Response.Redirect("pay.aspx");
                        }
                    }
                }
            }
        }
    }
}