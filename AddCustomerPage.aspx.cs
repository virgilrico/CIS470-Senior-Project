using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class AddCustomerPage : System.Web.UI.Page
    {
        
            protected void btnSubmit_Click(object sender, EventArgs e)
            {
                /*
                 * This function will first check server side validations 
                 * and then add values to the session object and redirect 
                 * to frmPersonalVerified form.
                 */
                if (ValidateFields()) //if Validate fields method has returned true
                {
                    //Add all text boxes values to the session object.
                    Session.Add("txtFirstName", txtFirstName.Text);//Add First Name to Session Object
                    Session.Add("txtLastName", txtLastName.Text);  //Add Last Name to Session Object
                    Session.Add("txtEmail", txtEmail.Text);    //Add Email to Session Object
                    Session.Add("txtAddress", txtAddress.Text);//Add Address to Session Object    
                    Session.Add("txtCity", txtCity.Text);    //Add City to Session Object
                    Session.Add("txtState", txtState.Text);//Add State to Session Object
                    Session.Add("txtZip", txtZip.Text);  //Add Zip to Session Object
                    Session.Add("txtPhone", txtPhone.Text);    //Add Phone to Session Object
                    Server.Transfer("AddCustomerVerified.aspx");//Redire ct to frmPersonalVerified page
                }

            }

            /*
             *This function will validate all the fields and return true or false 
             * depending on validation result 
             */
            protected bool ValidateFields()
            {
                /*
                 * The following statements will reset colors of all text boxes
                 * and reset the label lblError so that they do not contain the 
                 * states of previous validations 
                 */
                txtFirstName.BackColor = System.Drawing.Color.White;
                txtLastName.BackColor = System.Drawing.Color.White;
                txtEmail.BackColor = System.Drawing.Color.White;
                txtAddress.BackColor = System.Drawing.Color.White;
                txtCity.BackColor = System.Drawing.Color.White;
                txtState.BackColor = System.Drawing.Color.White;
                txtZip.BackColor = System.Drawing.Color.White;
                txtPhone.BackColor = System.Drawing.Color.White;
                lblError.Text = "";

                bool isValidated = true;


                /*
                 * The following statements will validate all text boxes
                 * if any text box is empty, it will
                 * set the error message and store it in lblError label
                 * change the back color of the text box
                 * set function variable to false
                 */

                //Validate First Name
                if (txtFirstName.Text.Trim() == "")
                {
                    lblError.Text += "First Name cannot be empty. ";
                    txtFirstName.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;

                }

                //Validate Last Name
                if (txtLastName.Text.Trim() == "")
                {
                    lblError.Text += "Last Name cannot be empty. ";
                    txtLastName.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                //Validate Email
                if (txtEmail.Text.Trim() == "")
                {
                    lblError.Text += "Please enter a valid email";
                    txtEmail.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                //Validate Address
                if (txtAddress.Text.Trim() == "")
                {
                    lblError.Text += "Please enter address ";
                    txtAddress.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                //Validate City
                if (txtCity.Text.Trim() == "")
                {
                    lblError.Text += "Please enter city";
                    txtCity.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                //Validate State
                if (txtState.Text.Trim() == "")
                {
                    lblError.Text += "Please enter state  ";
                    txtState.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                //Validate Zip
                if (txtZip.Text.Trim() == "")
                {
                    lblError.Text += "Please Enter the zip  ";
                    txtZip.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                //Validate Phone
                if (txtZip.Text.Trim() == "")
                {
                    lblError.Text += "Please enter a phone number ";
                    txtPhone.BackColor = System.Drawing.Color.Yellow;
                    isValidated = false;
                }

                return isValidated;

            }

            protected void btnViewCustomerPage_Click(object sender, EventArgs e)
            {
                Response.Redirect("AddCustomerVerified.aspx");
            }
        }

    }

