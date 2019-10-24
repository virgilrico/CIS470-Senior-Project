using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Check user roles from the session object
            if (Session["securityLevel"] != "O" && Session["securityLevel"] != "S")  //If user is not Operation Manager or Salesperson, Customer Page is not visible
            {   
                btnCustomerInformation.Visible = false;
                imgCustomerInfo.Visible = false; 
            }

            if (Session["securityLevel"] != "O") //If user is not Operation Manager. Operation Manager notification table, and user access image & link are not visible
            {
                btnUserAccessInformation.Visible = false;
                imgUserAccesInfo.Visible = false;
                grdViewOperationsManagerNotification.Visible = false;

            }
              if (Session["securityLevel"] != "S") //  If user is not Salesperson, Salesperson notification table is not visible
            {
                grdViewSalesPersonNotification.Visible = false; 
            }
            if (Session["securityLevel"] != "P") //If user is not Specialist, Specialist notification table is not visible
            {
                grdViewPrintingSpecialistNotification.Visible = false;
            }
            if (Session["securityLevel"] != "C") //If user is not Clerk, Clerk notification table is not visible
            {
                grdViewStockRoomClerkNotification.Visible = false;
            }
            if (Session["securityLevel"] != "O" && Session["securityLevel"] != "P") //If user not Operation Manager or Specialist, Quality Assurance Checklist link & image are not visible
            {
                btnQualityAssuranceChecklist.Visible = false;
                imgQualityAssuranceChecklist.Visible = false;
            }
        }
    }
}
