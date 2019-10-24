using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class CustomerInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["securityLevel"] != "S") //If user is not Salesperson, add customer link & image are not visible
            {
                linkbtnAddCustomer.Visible = false;
                imgBtnAddCustomer.Visible = false;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Sets bool to true
            bool validatedState = true;

            //checks if search textbox has an input, if not then error message appears
            if (Request["txtSearchName"].ToString().Trim() == "")
            {
                validatedState = false;                                       //sets bool to false
                txtSearchName.BackColor = System.Drawing.Color.Yellow;        //colors text box yellow
                lblErrorSearchLastName.Text = "Missing item Name input";      //set error label text

                lblErrorSearchLastName.BackColor = System.Drawing.Color.Red;  //colors error label red
            }
        }
    }
}
