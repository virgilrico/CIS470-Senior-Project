using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Includes namespaces to enable data access
using System.Data.OleDb;
using System.Net;
using System.Data;

namespace CIS470_Senior_Project
{
    public class clsDataLayer
    {
        public clsDataLayer()
        {

        } //end of clsDataLayer()

        public static dsCustomer GetCustomer(string Database, string strSearch)
        {
            // GetPersonnel variables
            dsCustomer DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;

            // connects to database
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);

            // if/else, to search personnel on the database
            if (strSearch == null || strSearch.Trim() == "")
            {
                sqlDA = new OleDbDataAdapter("select * from tblPersonnel", sqlConn);
            }
            else
            {
                sqlDA = new OleDbDataAdapter("select * from tblPersonnel where LastName = '" + strSearch + "'", sqlConn);
            }

            // datasheet
            DS = new dsCustomer();

            // holds the information from tblPersonnel
            sqlDA.Fill(DS.CUSTOMER);

            return DS;
        } //GetPersonnel close

        // This function verifies a user in the tblUser table
        public static dsUser VerifyUser(string Database, string UserName, string UserPassword)
        {
            // VerifyUser variables
            dsUser DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;

            // connection to database
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);

            // gets information forSecurityLevel from tclUserLogin
            sqlDA = new OleDbDataAdapter("Select SecurityLevel from tblUserLogin " +
            "where UserName like '" + UserName + "' " +
            "and UserPassword like '" + UserPassword + "'", sqlConn);

            // datasheet
            DS = new dsUser();

            // holds the information from tblUserLogin
            sqlDA.Fill(DS.tblUserLogin);

            return DS;
        } //VerifyUser close

        public static bool SaveUser(string Database, string UserName, string UserPassword,
string SecurityLevel)
        {
            bool recordSaved;

            //Transaction variable
            OleDbTransaction myTransaction = null;

            try
            {
                // connects to database
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
                "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;

                //start of use with transaction variable
                myTransaction = conn.BeginTransaction();
                command.Transaction = myTransaction;

                // Saves username, password, and security level values to database
                strSQL = "Insert into tblUserLogin " +
                "(UserName, UserPassword, SecurityLevel) values ('" +
                UserName + "', '" + UserPassword + "', '" + SecurityLevel + "')";

                // inputs text to database
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;

                // executes
                command.ExecuteNonQuery();

                // COMMIT transaction
                myTransaction.Commit();

                // closes connection to database
                conn.Close();

                recordSaved = true;
            }
            catch (Exception ex)
            {

                // If catch is passed, ROLLBACK will happen to transaction
                myTransaction.Rollback();

                recordSaved = false;
            }
            return recordSaved;
        } //SaveUser close

        // This function gets the IP Address
        public static string GetIP4Address()
        {
            string IP4Address = string.Empty;
            foreach (IPAddress IPA in
            Dns.GetHostAddresses(HttpContext.Current.Request.UserHostAddress))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                    break;
                }
            }
            if (IP4Address != string.Empty)
            {
                return IP4Address;
            }
            foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                    break;
                }
            }
            return IP4Address;
        }

    } //end of clsDataLayer
} //end of CIS470 Senior Course Project