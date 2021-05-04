using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDP_Website
{
    public partial class Print_Clearance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void printpdf_Click(object sender, EventArgs e)
        {
            ////Create Table Header
            //table.AddCell("Name");
            //table.AddCell("Age");
            //table.AddCell("ID");


            //foreach (GridViewRow rows in GridView1.Rows)
            //{

            //    string Name = GridView1.Rows[rows.RowIndex].Cells[0].Text;
            //    string Age = GridView1.Rows[rows.RowIndex].Cells[1].Text;
            //    string ID = GridView1.Rows[rows.RowIndex].Cells[2].Text;
            //    //Create Cells
            //    table.AddCell(Name);
            //    table.AddCell(Age);
            //    table.AddCell(ID);

            //}
            //doc.Add(paragraph);
            //doc.Add(table);

            //doc.Close(); //Close document
            //             //
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "success" + "');", true);

        }
    }
}