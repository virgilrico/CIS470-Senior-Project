using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace CIS470_Senior_Course_Project
{
    public partial class InventoryInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Checks user roles from the session object
            if (Session["securityLevel"] != "P" && Session["securityLevel"] != "C")  //If user is not Specialist or Clerk. Search panel, and edit inventory link & image are not visible
            {
                SearchPanelPrintingAndClerk0.Visible = false;
                imgEditInventory.Visible = false;
                linkEditInventory.Visible = false;

            }
   
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //sets bool as false
            bool validatedState = true;

            //Checks if search text box has an input, if not then error message appears
            if (Request["txtSearchItem"].ToString().Trim() == "")
            {
                validatedState = false;                                  //sets bool as false
                txtSearchItem.BackColor = System.Drawing.Color.Yellow;   //colors text box yellow
                lblErrorInventory.Text = "Missing item Name input";      //set error label text
                lblErrorInventory.BackColor = System.Drawing.Color.Red;  //colors error label red
            }
        }
    }
}


       
