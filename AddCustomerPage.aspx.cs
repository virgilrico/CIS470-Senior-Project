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
                bool validatedState = true;

            //checks if end date has an input, if not then error message appears
            if (Request["txtFirstName"].ToString().Trim() == "")
            {
                validatedState = false;
                txtFirstName.BackColor = System.Drawing.Color.Yellow;
                lblErrorFirstName.Text = "Missing First Name input";
                lblErrorFirstName.BackColor = System.Drawing.Color.Red;
            }

            //checks if end date has an input, if not then error message appears
            if (Request["txtLastName"].ToString().Trim() == "")
            {
                validatedState = false;
                txtLastName.BackColor = System.Drawing.Color.Yellow;
                lblErrorLastName.Text = "Missing Last Name input";
                lblErrorLastName.BackColor = System.Drawing.Color.Red;

            }

            //checks if end date has an input, if not then error message appears
            if (Request["txtUsername"].ToString().Trim() == "")
            {
                validatedState = false;
                txtUsername.BackColor = System.Drawing.Color.Yellow;
                lblErrorUsername.Text = "Missing Last Name input";
                lblErrorUsername.BackColor = System.Drawing.Color.Red;

            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtEmail"].ToString().Trim() == "")
            {
                validatedState = false;
                txtEmail.BackColor = System.Drawing.Color.Yellow;
                lblErrorEmail.Text = "Missing Last Name input";
                lblErrorEmail.BackColor = System.Drawing.Color.Red;

            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtEmail"].ToString().Trim() == "")
            {
                validatedState = false;
                txtEmail.BackColor = System.Drawing.Color.Yellow;
                lblErrorEmail.Text = "Missing Last Name input";
                lblErrorEmail.BackColor = System.Drawing.Color.Red;

            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtAddress"].ToString().Trim() == "")
            {
                validatedState = false;
                txtAddress.BackColor = System.Drawing.Color.Yellow;
                lblErrorAddress.Text = "Missing Last Name input";
                lblErrorAddress.BackColor = System.Drawing.Color.Red;
            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtCity"].ToString().Trim() == "")
            {
                validatedState = false;
                txtCity.BackColor = System.Drawing.Color.Yellow;
                lblErrorCity.Text = "Missing Last Name input";
                lblErrorCity.BackColor = System.Drawing.Color.Red;

            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtState"].ToString().Trim() == "")
            {
                validatedState = false;
                txtState.BackColor = System.Drawing.Color.Yellow;
                lblErrorState = "Missing Last Name input";
                lblErrorState.Color = System.Drawing.Color.Red;

            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtZip"].ToString().Trim() == "")
            {
                validatedState = false;
                txtZip.BackColor = System.Drawing.Color.Yellow;
                lblErrorZip.Text = "Missing Last Name input";
                lblErrorZip.BackColor = System.Drawing.Color.Red;

            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtPhone"].ToString().Trim() == "")
            {
                validatedState = false;
                txtPhone.BackColor = System.Drawing.Color.Yellow;
                lblErrorPhone.Text = "Missing Last Name input";
                lblErrorPhone.BackColor = System.Drawing.Color.Red;
            }
            
            //Checks if the new user is successfully saved
            if (validatedState == true)
            {
                try
                {
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

                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    lblError.Text = "Customer was saved.";
                    Response.Redirect("AddCustomerPage.aspx");
                }
                catch (Exception ex)
                {

                    lblError.Text = "The customer could not be added";
                }

            }

            protected void btnViewCustomerPage_Click(object sender, EventArgs e)
            {
                Response.Redirect("AddCustomerVerified.aspx");
            }
        }

    }

