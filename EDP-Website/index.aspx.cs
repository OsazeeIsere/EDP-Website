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
                ddlyearofreg.Items.Add("select year of regisration");
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
                    if (FileUpload1.HasFile)
                    {
                        string strname = FileUpload1.FileName.ToString();
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/ImageStorage/") + strname);
                        x.adddata("Insert Into member(firstname,lastname,username,password,pcnnumber,yearofregistration,area,phone,email,lga,sex,othernames,status,image) Values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtregusername.Text + "','" + txtregpassword.Text + "','" + txtpcn.Text + "','" + ddlyearofreg.Text + "','" + ddlareaofpractice.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + ddlstates.Text + "','" + sexvalue + "','" + txtothernames.Text + "','" + ddlstatus.Text + "','" + strname + "')");

                        //Label1.Visible = true;
                        //Label1.Text = "Image Uploaded successfully";
                        //txtname.Text = "";
                    }
                    else { 
                    //{
                    //    Label1.Visible = true;
                    //    Label1.Text = "Plz upload the image!!!!";
                    }
                    //    x.audit(Convert.ToString(Session["username"]), "courses", "all", "Course Creation", Convert.ToInt32(Session["adminid"]));
                    //    txtcoursecode.Text = "";
                    //    txtcoursetitle.Text = ""; where product_name='"+x+"';";
                    //    txtcoursecode.Text = "";
                    System.Data.DataTable dtmember = new System.Data.DataTable();
                    dtmember = x.getdatabase ("Select * From member where email='" + txtemail.Text +"'");
                    if (dtmember.Rows.Count > 0)
                    {
                        lbmsg.Text = "   " + "Successfully Registered. You Are Welcome!";
                        Session["username"] = txtusername.Text;
                        Session["password"] = txtpassword.Text;
                        Session["memberid"] = dtmember.Rows[0]["memberid"].ToString();
                        Session["fullname"] = dtmember.Rows[0]["firstname"].ToString() + " " + dtmember.Rows[0]["othernames"].ToString() + " " + dtmember.Rows[0]["lastname"].ToString();
                        Session["loginemail"] = dtmember.Rows[0]["email"].ToString();
                        Session["status"] = dtmember.Rows[0]["status"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lbmsg.Text = ex.ToString();
            }
            txtemail.Text = "";
            txtfirstname.Text = "";
            txtlastname.Text = "";
            txtothernames.Text = "";
            txtpassword.Text = "";
            txtpcn.Text = "";
            txtphone.Text = "";
            txtreenterpassword.Text = "";
            txtregpassword.Text = "";
            txtregusername.Text = "";
            txtusername.Text = "";
            ddlareaofpractice.Text = "";
            ddlstates.Text = "";
            ddlstatus.Text = "";
            ddlyearofreg.Text = "select year of regisration";
            rdbfemale.Text = "";
            rdbmale.Text = "";



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

        protected void btnsendmail_Click(object sender, EventArgs e)
        {
            try { 
            MailMessage msg = new MailMessage();
            msg.To.Add("stephanieisere@gmial.com");
            msg.From = new MailAddress("oz1.concepts@gmail.com");
            msg.Subject = "Payment Verified";
            msg.Body ="<h2> I Love U dear</h2>";
                msg.IsBodyHtml = true;

                // using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 465)) { 
                SmtpClient client1 = new SmtpClient();
                client1.EnableSsl = true;
                client1.Send(msg);

               // smtp.Host = "relay-hosting-secureserver.net";
           // smtp.Port = 25;
          //  smtp.Credentials = new System.Net.NetworkCredential("oz1.concepts@gmail.com", "prayer2JAH");
               // smtp.Send(msg);
            lblmsg.Text = "message sent successfully";
                
            }
            catch(Exception ex)
            {
                lblmsg.Text = ex.ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StartUpLoad();
        }
        private void StartUpLoad()
        {
            //get the file name of the posted image  
            string imgName = FileUpload1.FileName;
            //sets the image path  
            string imgPath = "ImageStorage/" + imgName;
            //get the size in bytes that  

            int imgSize = FileUpload1.PostedFile.ContentLength;

            //validates the posted file before saving  
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                // 10240 KB means 10MB, You can change the value based on your requirement  
                if (FileUpload1.PostedFile.ContentLength > 10240)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                }
                else
                {
                    //then save it to the Folder  
                    FileUpload1.SaveAs(Server.MapPath(imgPath));
                    Image1.ImageUrl = "~/" + imgPath;
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                }

            }
        }
    }
}