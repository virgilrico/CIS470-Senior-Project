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

 
        protected void btnAddOrder_Click(object sender, EventArgs e)
        {
         /*
         * The following statements will validate all text boxes
         * if any text box is empty, it will
         * set the error message and store it in lblError label
         * change the back color of the text box
         * set function variable to false
         */
            bool validatedState = true;
             
            //checks if Order Name has an input, if not then error message appears
            if (Request["txtOrderName"].ToString().Trim() == "")
            {
                validatedState = false;                                  //sets bool to false
                txtOrderName.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorOrderName.Text = "Missing Order Name input";     // sets error label text
                lblErrorOrderName.BackColor = System.Drawing.Color.Red;  //colors error label red
            }

            //checks if Customer Name has an input, if not then error message appears
            if (Request["txtCustomerName"].ToString().Trim() == "")
            {
                validatedState = false;                                     //sets bool to false
                txtCustomerName.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorCustomerName.Text = "Missing Customer Name input";  // sets error label text
                lblErrorCustomerName.BackColor = System.Drawing.Color.Red;  //colors error label red
            }

            //checks if Order Date has an input, if not then error message appears
            if (Request["txtOrderDate"].ToString().Trim() == "")
            {
                validatedState = false;                                  //sets bool to false
                txtOrderDate.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorOrderDate.Text = "Missing Order Date input";     // sets error label text
                lblErrorOrderDate.BackColor = System.Drawing.Color.Red;  //colors error label red
            }

            //checks if Order Text has an input, if not then error message appears
            if (Request["txtOrderText"].ToString().Trim() == "")
            {
                validatedState = false;                                  //sets bool to false
                txtOrderText.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorOrderText.Text = "Missing Order Text input";     // sets error label text
                lblErrorOrderText.BackColor = System.Drawing.Color.Red;  //colors error label red
            }

            //checks if Order Price has an input, if not then error message appears
            if (Request["txtOrderPrice"].ToString().Trim() == "")
            {
                validatedState = false;                                   //sets bool to false
                txtOrderPrice.BackColor = System.Drawing.Color.Yellow;    //colors text box yellow
                lblErrorOrderPrice.Text = "Missing Order Price input";    // sets error label text
                lblErrorOrderPrice.BackColor = System.Drawing.Color.Red;  //colors error label red
            }

            //Checkfs if bool is true
            if (validatedState == true)
            {
                try
                {
                    // Creates connection to database
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string strSQL2;
                    string orderName = txtOrderName.Text;                           //store orderName in string
                    string customerName = txtCustomerName.Text;                     //store customerName in string 
                    string inventoryName = ddlInventoryName.SelectedValue.ToString(); //store inventoryName in string 
                    string orderDate = txtOrderDate.Text;                             // store orderDate in string
                    string orderText = txtOrderText.Text;                           //store orderText in string
                    string orderPrice = txtOrderPrice.Text;                          //store orderPrice in string
                    string orderStatus = "OPEN";                                    //store orderStatus in string
                    string user = "Salesperson";                                    //store user in string
                    string message = "A new order has been added.";                 //store message in string

                    //Inserts to order table
                    strSQL = "Insert into tblOrder " + "( orderName, customerName, inventoryName, orderDate, orderText, orderPrice, OrderStatus) VALUES ( '" + orderName + "','" + customerName + "','" + inventoryName + "','" + orderDate + "','" + orderText + "','" + orderPrice + "','" + orderStatus + "')";
                    
                    //Inserts to Operation Manager notification table
                    strSQL2 = "Insert into tblNotificationOperationManager" + "( sender, message) VALUES ( '" + user + "','" + message + "')";

                    //Fills user input to database tables
                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();

                    //Notifies user that data was saves and reloads page
                    lblError.Text = "Order was saved.";
                    Response.Redirect("AddOrderPage.aspx");
                }
                catch (Exception ex)
                {
                    lblError.Text = "The order was not saved.";    //Notifies user that data was not saved
                }
            }
        }
    }
}
