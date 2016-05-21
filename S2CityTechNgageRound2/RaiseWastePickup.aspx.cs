using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

//Database access related
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Cloud_Security_Assessment
{
    public partial class RaiseWastePickup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitRequest_Click(object sender, EventArgs e)
        {

            Debug.Write("Waste Type " + WasteType.Text);

            if (CreateNewWastePickupRequest(Session["Username"].ToString(), WasteType.Text, 5,
                txtAddressLine.Text, 560100, txtMobile.Text, "For Pickup"))
            {
               
               
                Debug.Write("Waste Type " + WasteType.Text);
                Response.Redirect("WastePickupRequests.aspx");
            }
            else
            {
               // messsage = "Incorrect Username and/or Password";
                //pannelNotification.Visible = true;
            }
        }

        public bool CreateNewWastePickupRequest(string sUserId, string sWasteType, int iQty, string sAddressLine, int iPinCode, 
            string sMobileNumber, string sWasteStage)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd;
           
            con.ConnectionString = ConfigurationManager.ConnectionStrings["S2CityDBConnectionString"].ToString();
            bool result;

            string query = "INSERT INTO WasteManagement  ([UserId], [WasteType], [Quantity],[AddressLine] ,[Pincode],[MobileNumber],[WasteStage],[RequestRaised] )" +
                                                 "Values (@sUserId, @sWasteType, @iQty, @sAddressLine, @iPinCode, @sMobileNumber, @sWasteStage,GETDATE() )";

            try
            {
                con.Open();
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@sUserId", sUserId);
                cmd.Parameters.AddWithValue("@sWasteType", sWasteType);
                cmd.Parameters.AddWithValue("@iQty", iQty);
                cmd.Parameters.AddWithValue("@sAddressLine", sAddressLine);
                cmd.Parameters.AddWithValue("@iPinCode", iPinCode);
                cmd.Parameters.AddWithValue("@sMobileNumber", sMobileNumber);
                cmd.Parameters.AddWithValue("@sWasteStage", sWasteStage);
               

                cmd.ExecuteNonQuery();
                result = true;
            }
            catch (Exception e)
            {

                result = false;
                Debug.Write(e.Message);
            }
            finally
            {
                con.Close();
            }
            return result;
        }

    }
}