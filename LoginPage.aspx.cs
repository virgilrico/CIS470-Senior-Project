using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            // Create the object to dsUser Dataset
            dsUser dsUserLogin;
            // security Level variable that holds the role of the suer
            string securityLevel;
            // Verify user login and password from the datbase
            dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath("wsc_v4.mdb"),
            Login1.UserName, Login1.Password);
            // if user does not exist
            if (dsUserLogin.tblUserAccess.Count < 1)
            {
                e.Authenticated = false;
                return;
            }
            // set the security level of the user
            securityLevel = dsUserLogin.tblUserAccess[0].securityLevel.ToString();
            // switch for the security level values
            switch (securityLevel)
            {
                case "O":
                    // if the user logs in as Operation Manager, set the session variable value to O
                    e.Authenticated = true;
                    Session["securityLevel"] = "O";
                    break;
                case "S":
                    // if the user logs in as Salesperson, set the session variable value to S
                    e.Authenticated = true;
                    Session["securityLevel"] = "S";
                    break;
                case "P":
                    // if the user logs in as Specialist, set the session variable value to P
                    e.Authenticated = true;
                    Session["securityLevel"] = "P";
                    break;
                case "C":
                    // if the user logs in as Clerk, set the session variable value to C
                    e.Authenticated = true;
                    Session["securityLevel"] = "C";
                    break;
                default:
                    e.Authenticated = false;
                    break;
            }


        }
    }
}
   

 
    
