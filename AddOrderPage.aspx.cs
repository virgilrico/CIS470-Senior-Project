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
    public partial class AddOrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {

            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|wsc_v4.accdb");
            conn.Open();
            OleDbCommand command = conn.CreateCommand();

            string strSQL;
            string orderText = txtOrderName.Text;

            strSQL = "Insert into tblOrder " + "( orderText) VALUES ( '" + orderText + "')";

            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;
            command.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("AddOrder.aspx");


        }
        
        protected void btnNotification_Click(object sender, EventArgs e)
        {
            bool validatedState = true;
            //Validate State
                if (txtNotificationManager.Text.Trim() == "")
                {
                    isValidated = false;
                    lblNotificationManager.Text += "Please enter Notification input.";
                    lblNotificationManager.BackColor = System.Drawing.Color.Red;
                    txtNotificationManager.BackColor = System.Drawing.Color.Yellow;
                    
                }
                
            if (validatedState == true)
            {
                try
                {
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|wsc_v4.accdb");
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string user = "Operation Manager"
                    string message = txtNotificationManager.Text;

                    strSQL = "Insert into tblNotificationSpecialist " + "( sender, message) VALUES ( '" + user + "','" + message + "')";

                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    lblErrorNotificationManager = "Notification was sent.";
                    txtNotificationManager.Text = "";
                }
                
                catch(Exception ex)
                {
                    lblErrorNotificationManager = "Notification was not sent."
                }
            {
        }
        
    }
}
