using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS470_Senior_Course_Project
{
    public partial class ViewOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Declare the DataSet
                dsOrder myDataSet = new dsOrder();

                string strSearch = "";
                //Gets Search Name from the request object from the previous form's text box
                if (Request["txtSearchOrder"] != null) //Checks if the request string is null
                    strSearch = Request["txtSearchOrder"].ToString();

                // Fill the dataset with what is returned from the function
                myDataSet = clsDataLayer.GetOrder(Server.MapPath("wsc_v4.mdb"), strSearch);
                // Set the DataGrid to the DataSource based on the table
                grdViewOrder.DataSource = myDataSet.Tables["tblOrder"];

                // Bind the DataGrid
                grdViewOrder.DataBind();
            }
        }
    }
    }