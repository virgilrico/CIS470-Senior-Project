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
    public partial class AddCustomerPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitAddCustomer_Click(object sender, EventArgs e)
        {
            //sets bool as true
            bool validatedState = true;

            //checks if FirstName has an input, if not then error message appears
            if (Request["txtFirstName"].ToString().Trim() == "")
            {
                validatedState = false;                                  //sets bool to false
                txtFirstName.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorFirstName.Text = "Missing First Name input";     // sets error label text
                lblErrorFirstName.BackColor = System.Drawing.Color.Red;  // colors error label red
            }

            //checks if Last name has an input, if not then error message appears
            if (Request["txtLastName"].ToString().Trim() == "")
            {
                validatedState = false;                                 //sets bool to false
                txtLastName.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorLastName.Text = "Missing Last Name input";      // sets error label text
                lblErrorLastName.BackColor = System.Drawing.Color.Red;  // colors error label red

            }

            //checks if Username has an input, if not then error message appears
            if (Request["txtUsername"].ToString().Trim() == "")
            {
                validatedState = false;                                 //sets bool to false
                txtUsername.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorUsername.Text = "Missing Username input";       // sets error label text
                lblErrorUsername.BackColor = System.Drawing.Color.Red;  // colors error label red

            }

            //checks if email has an input, if not then error message appears
            if (Request["txtEmail"].ToString().Trim() == "")
            {
                validatedState = false;                              //sets bool to false
                txtEmail.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorEmail.Text = "Missing Email input";          // sets error label text
                lblErrorEmail.BackColor = System.Drawing.Color.Red;  // colors error label red

            }

            //checks if Address has an input, if not then error message appears
            if (Request["txtAddress"].ToString().Trim() == "")
            {
                validatedState = false;                                //sets bool to false
                txtAddress.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorAddress.Text = "Missing Address input";        // sets error label text
                lblErrorAddress.BackColor = System.Drawing.Color.Red;  // colors error label red
            }

            //checks if City has an input, if not then error message appears
            if (Request["txtCity"].ToString().Trim() == "")
            {
                validatedState = false;                             //sets bool to false
                txtCity.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorCity.Text = "Missing City input";           // sets error label text
                lblErrorCity.BackColor = System.Drawing.Color.Red;  // colors error label red

            }

            //checks if State has an input, if not then error message appears
            if (Request["txtState"].ToString().Trim() == "")
            {
                validatedState = false;                              //sets bool to false
                txtState.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorState.Text = "Missing State input";          // sets error label text
                lblErrorState.BackColor = System.Drawing.Color.Red;  // colors error label red

            }

            //checks if Zip has an input, if not then error message appears
            if (Request["txtZip"].ToString().Trim() == "")
            {
                validatedState = false;                            //sets bool to false
                txtZip.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorZip.Text = "Missing Zip input";            // sets error label text
                lblErrorZip.BackColor = System.Drawing.Color.Red;  // colors error label red

            }

            //checks if Phone has an input, if not then error message appears
            if (Request["txtPhone"].ToString().Trim() == "")
            {
                validatedState = false;                              //sets bool to false
                txtPhone.BackColor = System.Drawing.Color.Yellow;    // colors the text box yellow
                lblErrorPhone.Text = "Missing Phone input";          // sets error label text
                lblErrorPhone.BackColor = System.Drawing.Color.Red;  // colors error label red
            }

            //Checks if validate is true 
            if (validatedState == true)
            {
                try
                {
                    //Creates connect to database
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string firstName = txtFirstName.Text;   
                    string lastName = txtLastName.Text;
                    string username = txtUsername.Text;
                    string email = txtEmail.Text;
                    string address = txtAddress.Text;
                    string city = txtCity.Text;
                    string state = txtState.Text;
                    string zip = txtZip.Text;
                    string phone = txtPhone.Text;
                  
                    strSQL = "Insert into tblCustomer " + "( customerFirstName, customerLastName, customerUserName, customerEmail, customerAddress, customerCity, customerState, customerZip, customerPhone) VALUES ('" + firstName + "','" + lastName + "','" + username + "','" + email + "','" + address + "','" + city + "','" + state + "','" + zip + "','" + phone + "')";

                    // Add user input to database table
                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    //  Notifies user data has been saved and reloads page
                    lblError.Text = "Customer was saved.";
                    Response.Redirect("AddCustomerPage.aspx");
                }
                catch (Exception ex)
                {
                    // Notifies user, data was not saved
                    lblError.Text = "The customer could not be added";
                }
            }

        }
    }
}
