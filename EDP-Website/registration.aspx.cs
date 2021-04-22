using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //adddata("Insert Into semester(semester) Values('" + txtsemester.Text + "')");

            //txtsemester.Text = "";
            //lbmsg.Text = "The Semester is Registered";

        }
        protected void btnsbmit_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    System.Data.DataTable dtgetdepartment = new System.Data.DataTable();
            //    System.Data.DataTable dtgetstudent = new System.Data.DataTable();

            Response.Redirect("contact.aspx");
            //    dtgetdepartment = getdatabase("Select * From department");
            //    if (string.IsNullOrEmpty(txtcoursecode.Text))
            //    {
            //        lbmsg.Text = "Please Enter the Course Code";
            //    }
            //    else if (string.IsNullOrEmpty(txtcoursetitle.Text))
            //    {
            //        lbmsg.Text = "Please Enter the Course Title";
            //    }
            //    else if (string.IsNullOrEmpty(ddllevel.Text))
            //    {
            //        lbmsg.Text = "Please Select the Curent Level";
            //    }
            //    else if (string.IsNullOrEmpty(ddlsemester.Text))
            //    {
            //        lbmsg.Text = "Please Select the Curent Session";
            //    }
            //    else
            //    {
            //        adddata("Insert Into courses(department,semester,coursecode,coursetitle,level,courseunit) Values('" + ddldepartment.Text + "','" + ddlsemester.Text + "','" + txtcoursecode.Text + "','" + txtcoursetitle.Text + "','" + ddllevel.Text + "','" + double.Parse(txtunit.Text) + "')");
            //        x.audit(Convert.ToString(Session["username"]), "courses", "all", "Course Creation", Convert.ToInt32(Session["adminid"]));
            //        txtcoursecode.Text = "";
            //        txtcoursetitle.Text = "";
            //        txtcoursecode.Text = "";
            //        lbmsg.Text = "The Course is Registered";
            //    }
            //}
            //catch (Exception ex)
            //{
            //  //  lbmsg.Text = ex.ToString();
            //}

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}