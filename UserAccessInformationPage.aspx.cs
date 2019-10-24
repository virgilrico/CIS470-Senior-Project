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
    public partial class UserAccessInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //sets bool as true
            bool validatedState = true;

            //checks if Username text box has an input, if not then error message appears
            if (Request["txtUserName"].ToString().Trim() == "")
            {
                validatedState = false;                                 //sets bool to false
                txtUserName.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorUserName.Text = "Missing Username input";       //sets error label text
                lblErrorUserName.BackColor = System.Drawing.Color.Red;  //colors error label red
            }

            //checks if password text box has an input, if not then error message appears
            if (Request["txtPassword"].ToString().Trim() == "")
            {
                validatedState = false;                                 //sets bool to false
                txtPassword.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorPassword.Text = "Missing Password input";       //sets error label text
                lblErrorPassword.BackColor = System.Drawing.Color.Red;  //colors error label red

            }

            //Checks if bool is true
            if (validatedState == true)
            {
                try
                {  
                    //Create a new connection object to the Access database
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");

                    //Open the database connection
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string username = txtUserName.Text;
                    string password = txtPassword.Text;
                    string securityLevel = cboRole.SelectedValue.ToString();

                    // Inserts into user access database table
                    strSQL = "Insert into tblUserAccess " + "( userName, userPassword, securityLevel) VALUES ('" + username + "','" + password + "','" + securityLevel + "')";

                    // Fills user input into database table and closes connection
                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    //Notifies user input was saved and reloads page
                    lblNewUserStatus.Text = "User was saved.";
                    Response.Redirect("UserAccessInformationPage.aspx");
                }

                catch (Exception ex)
                {
                    // Notifies user that data was not saved
                    lblNewUserStatus.Text = "User was not saved.";
                }
            }
        }
    }
}
