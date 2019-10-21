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
            
            bool validatedState = true;

            //checks if end date has an input, if not then error message appears
            if (Request["txtOrderName"].ToString().Trim() == "")
            {
                validatedState = false;
                txtOrderName.BackColor = System.Drawing.Color.Yellow;
                lblErrorOrderName.Text = "Missing Order Name input";
                lblErrorOrderName.BackColor = System.Drawing.Color.Red;
            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtCustomerName"].ToString().Trim() == "")
            {
                validatedState = false;
                txtCustomerName.BackColor = System.Drawing.Color.Yellow;
                lblErrorCustomerName.Text = "Missing Customer Name input";
                lblErrorCustomerName.BackColor = System.Drawing.Color.Red;
            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtOrderDate"].ToString().Trim() == "")
            {
                validatedState = false;
                txtOrderDate.BackColor = System.Drawing.Color.Yellow;
                lblErrorOrderDate.Text = "Missing Order Date input";
                lblErrorOrderDate.BackColor = System.Drawing.Color.Red;
            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtOrderText"].ToString().Trim() == "")
            {
                validatedState = false;
                txtOrderText.BackColor = System.Drawing.Color.Yellow;
                lblErrorOrderText.Text = "Missing Order Text input";
                lblErrorOrderText.BackColor = System.Drawing.Color.Red;
            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtOrderPrice"].ToString().Trim() == "")
            {
                validatedState = false;
                txtOrderPrice.BackColor = System.Drawing.Color.Yellow;
                lblErrorOrderPrice.Text = "Missing Order Price input";
                lblErrorOrderPrice.BackColor = System.Drawing.Color.Red;
            }
            
            //checks if end date has an input, if not then error message appears
            if (Request["txtOrderStatus"].ToString().Trim() == "")
            {
                validatedState = false;
                txtOrderStatus.BackColor = System.Drawing.Color.Yellow;
                lblErrorOrderStatus.Text = "Missing Order Status input";
                lblErrorOrderStatus.BackColor = System.Drawing.Color.Red;
            }
            
            if (validatedState == true)
            {
                try
                {
                    OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|wsc_v4.mdb");
                    conn.Open();
                    OleDbCommand command = conn.CreateCommand();

                    string strSQL;
                    string orderName = txtOrderName.Text;
                    string customerName = txtCustomerName.Text;
                    string inventoryName = ddlInventoryName.SelectedValue.ToString();
                    string orderDate = txtOrderDate.Text;
                    string orderText = txtOrderText.Text;
                    string orderPrice = txtOrderPrice.Text;
                    string orderStatus = txtOrderStatus.Text;

                    strSQL = "Insert into tblOrder " + "( orderName, customerName, inventoryName, orderDate, orderText, orderPrice, OrderStatus) VALUES ( '" + orderName + "','" + customerName + "','" + inventoryName + "','" + orderDate + "','" + orderText + "','" + orderPrice + "','" + orderStatus + "')";

                    command.CommandType = CommandType.Text;
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();
                    conn.Close();
                    
                    lblError.Text = "Order was saved.";
                    Response.Redirect("AddOrderPage.aspx");
        }
            catch(Exception ex)
                {
                    lblError.Text = "The order was not saved.";
                }
    }
}
