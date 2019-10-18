using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class OrderInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            bool validatedState = true; 

            //checks if end date has an input, if not then error message appears
            if (Request["txtSearch"].ToString().Trim() == "")
            {
                validatedState = false;
                txtSearchOrder.BackColor = System.Drawing.Color.Yellow;
                lblError.Text = "Missing End Date";
                lblError.BackColor = System.Drawing.Color.Red;
            }

            Session["txtSearchOrder"] = txtSearchOrder.Text;

            if (validatedState != false)
            {
                Response.Redirect("MainPage.aspx");
            }

        }
        
    }
}
