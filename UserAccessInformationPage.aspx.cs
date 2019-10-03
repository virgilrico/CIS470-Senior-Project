using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Project
{
    public partial class UserAccessInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            if (clsDataLayer.SaveUser(Server.MapPath("PayrollSystem_DB.accdb"),
txtUsername.Text, txtPassword.Text, ddlSecurityLevel.SelectedValue))
            {
                lblError.Text = "The user was successfully added!";
                grdUsers.DataBind();
            } //if close

            else
            {
                lblError.Text = "The user was not added.";
            }
        }
    }
}
