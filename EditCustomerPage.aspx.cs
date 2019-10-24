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
    public partial class EditInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["securityLevel"] != "P") //If user is not Specialist, Specialist notification panel is not visible
            {
                panelNotificationSpecialist.Visible = false;
            }
            if (Session["securityLevel"] != "C") // If user is not Clerk, Clerk notification panel is not visible
            {
                panelNotificationClerk.Visible = false;
            }
        }

        protected void btnNotificationSpecialist_Click(object sender, EventArgs e)
        {
            //Sets bool as true
            bool validatedState = true;
            
            // Checks in Specialist notification text box has an input
            if (txtNotificationSpecialist.Text.Trim() == "")
            {
                validatedState = false;                                                     //sets bool as false
                lblErrorNotificationSpecialist.Text += "Please enter Notification input.";  //sets error label text
                lblErrorNotificationSpecialist.BackColor = System.Drawing.Color.Red;        //colors error label red
                txtNotificationSpecialist.BackColor = System.Drawing.Color.Yellow;          //colors text box yellow0
            }

            if (validatedState == true)
            {
                try
                {
                    //Creates connection to database
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string user = "Printing/Engraving Specialist";
                    string message = txtNotificationSpecialist.Text;

                    // adds user input to the table tblNotificationStockRoomClerk
                    strSQL = "Insert into tblNotificationStockRoomClerk " + "( sender, message) VALUES ( '" + user + "','" + message + "')";

                    // Fills user input into database table and closes connection
                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    // Notifies user the data was saved and clears notification text box
                    lblErrorNotificationSpecialist.Text = "Notification was sent.";
                    txtNotificationSpecialist.Text = "";
                }

                catch (Exception ex)
                {
                    // If error occurs, notifies user data was not saved
                    lblErrorNotificationSpecialist.Text = "Notification was not sent.";
                }
            }
        }

        protected void btnNotificationClerk_Click(object sender, EventArgs e)
        {
            bool validatedState = true;

            //Validate State
            if (txtNotificationClerk.Text.Trim() == "")
            {
                validatedState = false;
                lblErrorNotificationClerk.Text += "Please enter Notification input.";   //set error message 
                lblErrorNotificationClerk.BackColor = System.Drawing.Color.Red;         //change back color of the error label to red
                txtNotificationClerk.BackColor = System.Drawing.Color.Yellow;           //change back color of the text box to yellow
            }

            if (validatedState == true)
            {
                try
                {
                    //Create a new connection object to the Access database
                    OleDbConnection conn2 = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");
                    conn2.Open();
                    OleDbCommand command2 = conn2.CreateCommand();

                    string strSQL2;
                    string user2 = "Stock Room Clerk";
                    string message2 = txtNotificationClerk.Text;

                    strSQL2 = "Insert into tblNotificationPrintingSpecialist " + "( sender, message) VALUES ( '" + user2 + "','" + message2 + "')";

                    command2.CommandType = CommandType.Text;
                    command2.CommandText = strSQL2;
                    command2.ExecuteNonQuery();
                    //close the database connection
                    conn2.Close();

                    lblErrorNotificationClerk.Text = "Notification was sent.";
                    txtNotificationClerk.Text = "";
                }

                catch (Exception ex)
                {
                    lblErrorNotificationClerk.Text = "Notification was not sent.";
                }
            }
        }
    }
}
           
