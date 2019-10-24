using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Net;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace CIS470_Senior_Course_Project
{
    /// <summary>
    /// This class will get the user and customer activity and store it in the database table tblCustomer and tblUserActivity
    /// </summary>
    public class clsDataLayer
    {

        // This function verifies a user in the tblUserAccess table
        public static dsUser VerifyUser(string Database, string userName, string userPassword)
        {
            // Create a dataset object of dsUser dataset
            dsUser DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // Create a connection to the database
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + Database);
            // open dataadapter and set the query
            sqlDA = new OleDbDataAdapter("Select securityLevel from tblUserAccess " +
            "where userName like '" + userName + "' " +
            "and userPassword like '" + userPassword + "'", sqlConn);
            // allocate memory to the dataset object
            DS = new dsUser();
            // fill the dataset using the dataadapter
            sqlDA.Fill(DS.tblUserAccess);
            // return the filled dataset with the data
            return DS;
        }

      
        // This function gets the customer information from the database
        public static dsPersonnel GetCustomer(string Database, string strSearch)
        {
            // creating OLEDB Dataset, OLEDB connection and Data adapter objects
            dsPersonnel DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            //create a new connection and provide conenction string to the connection object
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + Database);

            //A where clause for the sql query initially set to empty string
            string whereClause = "";
            //Checks if strSearch paramter has some value then set the where clause
            if (strSearch.Trim().Length > 0)
                whereClause = whereClause + " where customerLastName = '" + strSearch + "'";

            // create a new data adapter and provide query to the data adapter with the where clause
            sqlDA = new OleDbDataAdapter("select * from tblCustomer " + whereClause, sqlConn);
            // allocate new data set
            DS = new dsPersonnel();
            // fill the dataset with the results generated from the query
            sqlDA.Fill(DS.tblCustomer);
            // return the data set
            return DS;
        }
         //This funtion gets the order infromation from the table tblOrder
        public static dsOrder GetOrder(string Database, string strSearch)
        {
            // creating OLEDB Dataset, OLEDB connection and Data adapter objects
            dsOrder DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            //create a new connection and provide conenction string to the connection object
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + Database);

            //A where clause for the sql query initially set to empty string
            string whereClause = "";
            //Checks if strSearch paramter has some value then set the where clause
            if (strSearch.Trim().Length > 0)
                whereClause = whereClause + " where orderName = '" + strSearch + "'";

            // create a new data adapter and provide query to the data adapter with the where clause
            sqlDA = new OleDbDataAdapter("select * from tblOrder " + whereClause, sqlConn);
            // allocate new data set
            DS = new dsOrder();
            // fill the dataset with the results generated from the query
            sqlDA.Fill(DS.tblOrder);
            // return the data set
            return DS;
        }
        //This funtion gets the inventory information from the table tblInventory
        public static dsInventory GetItem(string Database, string strSearch)
        {
            // creating OLEDB Dataset, OLEDB connection and Data adapter objects
            dsInventory DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            //create a new connection and provide conenction string to the connection object
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + Database);

            //A where clause for the sql query initially set to empty string
            string whereClause = "";
            //Checks if strSearch paramter has some value then set the where clause
            if (strSearch.Trim().Length > 0)
                whereClause = whereClause + " where productName = '" + strSearch + "'";

            // create a new data adapter and provide query to the data adapter with the where clause
            sqlDA = new OleDbDataAdapter("select * from tblInventory " + whereClause, sqlConn);
            // allocate new data set
            DS = new dsInventory();
            // fill the dataset with the results generated from the query
            sqlDA.Fill(DS.tblInventory);
            // return the data set
            return DS;
        }
        public clsDataLayer()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        // This function saves the new user to the user database
        public static bool SaveUser(string Database, string UserName, string Password,
        string role)
        {

            bool recordSaved;



            try
            {
                // Create a New Connection Object to the Access Database
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" +
                "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;

                // Create the sql query and set the values from the parameters of first and last names only
                strSQL = "Insert into tblUserAccess " +
                "(userName, userPassword, securityLevel) values ('" +
                UserName + "', '" + Password + "', '" + role + "')";
                // set the command text of the command object
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                // Execute the insert statement
                command.ExecuteNonQuery();

                // Close the Database connection
                conn.Close();
                recordSaved = true;
            }
            catch (Exception ex)
            {

                recordSaved = false;

            }

            return recordSaved;
        }

    }
}
