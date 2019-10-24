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
    public partial class QualityAssuranceChecklistPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["securityLevel"] != "O") //If the user is Operations manager, Panel1 is not visible
            {
                Panel1.Visible = false;
            }
            if (Session["securityLevel"] != "P") //If the user is Printing Specialist, Panel2 is not visible
            {
                Panel2.Visible = false;
            }
        }

        protected void btnNotificationSpecialist_Click(object sender, EventArgs e)
        {
            //set bools as true
            bool validatedState = true;
            
            // Checks if notification text box has an input
            if (txtNotificationSpecialist.Text.Trim() == "")
            {
                validatedState = false;                                                     //sets bool as false
                lblErrorNotificationSpecialist.Text += "Please enter Notification input.";  //set error message 
                lblErrorNotificationSpecialist.BackColor = System.Drawing.Color.Red;        //change the back color of the error label to red
                txtNotificationSpecialist.BackColor = System.Drawing.Color.Yellow;          //change the back color of the text box to yellow
            }

            if (validatedState == true)  //Checks if bool is true
            {
                try
                {
                    //Create a new connection object to the Access database
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");

                    //Open the database connection
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string user = "Printing/Engraving Specialist";
                    string message = txtNotificationSpecialist.Text;

                    //Inserts into Operation manager notification database table
                    strSQL = "Insert into tblNotificationOperationsManager " + "( sender, message) VALUES ( '" + user + "','" + message + "')";

                    //Fills user input into database table and closes connection
                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    // Notifies user that data has been saved and clear notification text box 
                    lblErrorNotificationSpecialist.Text = "Notification was sent.";
                    txtNotificationSpecialist.Text = "";
                }

                catch (Exception ex)
                {
                    // Notifies user that data was not saved
                    lblErrorNotificationSpecialist.Text = "Notification was not sent.";
                }
            }
        }
    }
}
   

