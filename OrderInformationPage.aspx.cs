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
    public partial class OrderInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Checks user roles from the session object
            if (Session["securityLevel"] != "S")
            {
                linkCreateNewOrder.Visible = false;
                imgCreateNewOrder.Visible = false;
             
            }
            if (Session ["securityLevel"] != "O") //If the user is not Operations Manager, EditValidate order link and image is not visible
            {
                linkEditValidateOrder.Visible = false;
                imgEditValidateOrder.Visible = false;


            }
            if (Session["securityLevel"] == "O") //If the user is Operations manager, edit order link and image is not visible
            {
                linkEditOrder.Visible = false;
                imgEditOrder.Visible = false;
            }
            if (Session["securityLevel"] == "C") //If the user is Stcok Room Clerk, edit order link and image is not visible
            {
                linkEditOrder.Visible = false;
                imgEditOrder.Visible = false;
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            bool validatedState = true;

            //checks if Order Name has an input, if not then error message appears
            if (Request["txtSearchOrder"].ToString().Trim() == "")
            {
                validatedState = false;
                txtSearchOrder.BackColor = System.Drawing.Color.Yellow;//change the back color of the text box 
                lblErrorOrder.Text = "Missing Order Name input";    //set error message
                lblErrorOrder.BackColor = System.Drawing.Color.Red; //change the back color of the error label
            }
        }
    }
}
