using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace CIS470_Senior_Project
{
    public partial class UserAccessInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            
            try {
                OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|wsc_v4.accdb");
                conn.Open();
                OleDbCommand command = conn.CreateCommand();

                string strSQL;
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string securityLevel = ddlSecurityLevel.SelectedValue.ToString();

                strSQL = "Insert into tblUserAccess " + "( userName, userPassword, securityLevel) VALUES ('" + username + "','" + password + "','" + securityLevel + "')";

                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                command.ExecuteNonQuery();
                conn.Close();

                
                lblError.Text = "User was saved.";
            }
            catch (Exception ex)
            {
                
                lblError.Text = "User was not saved.";
            }

            Response.Redirect("UserAccessInformationPage.aspx");

        }
    }
}
