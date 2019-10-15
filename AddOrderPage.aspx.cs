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
        
    }
}
