using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class AddCustomerVerified : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Add your comments here
            TextBox1.Text = Request["txtFirstName"] +
            "\n" + Request["txtLastName"] +
            "\n" + Request["txtEmail"] +
            "\n" + Request["txtAddress"] +
            "\n" + Request["txtCity"] +
             "\n" + Request["txtState"] +
            "\n" + Request["txtZip"] +
            "\n" + Request["txtPhone"];
        }
    }
}