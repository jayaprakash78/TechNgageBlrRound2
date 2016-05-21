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

namespace S2City
{
    public partial class UpdateWastePickupRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String sRequestNumber;

            sRequestNumber = Request.QueryString["RequestNumber"];

            Debug.Write(sRequestNumber);
            Session["RequestNumber"] = sRequestNumber;

            LoadWastePickupDetails(Request.QueryString["RequestNumber"]);

        }

        protected void btnSubmitRequest_Click(object sender, EventArgs e)
        {

            Debug.Write("btnSubmitRequest_Click");

            UpdateState();

            Response.Redirect("ManageWastePickupRequests.aspx");
        }

        public bool UpdateState()
        {
            bool status = false;
            SqlConnection con = new SqlConnection();
            SqlCommand cmd;
            String sWasteStageStatus;

            con.ConnectionString = ConfigurationManager.ConnectionStrings["S2CityDBConnectionString"].ToString();
            cmd = new SqlCommand();

           
            try
            {
                con.Open();
                cmd.Connection = con;

                //sWasteStageStatus = Request.Form("WasteStageStatus");


                switch (WasteStageStatus.Text)
                {
                    case "Pickup Scheduled":
                        cmd.CommandText += string.Format(@"update [WasteManagement] set [WasteStage] = '{0}', [Scheduled]=GETDATE() where [RequestNumber] = {1} ;",
                                                  WasteStageStatus.Text, Convert.ToInt32(Session["RequestNumber"]));
                        break;
                    case "Collected":
                        cmd.CommandText += string.Format(@"update [WasteManagement] set [WasteStage] = '{0}', [Collected]=GETDATE() where [RequestNumber] = {1} ;",
                                                  WasteStageStatus.Text, Convert.ToInt32(Session["RequestNumber"]));
                        break;
                    case "Completed":
                        cmd.CommandText += string.Format(@"update [WasteManagement] set [WasteStage] = '{0}', [Completed]=GETDATE() where [RequestNumber] = {1} ;",
                                                  WasteStageStatus.Text, Convert.ToInt32(Session["RequestNumber"]));
                        break;
                }



                cmd.ExecuteNonQuery();
                status = true;
            }
            catch
            {
                status = false;
            }
            finally
            {
                con.Close();
            }
            return status;
        }

        public bool LoadWastePickupDetails(string sRequestNumber)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd;
            SqlDataReader objDR;
            

            con.ConnectionString = ConfigurationManager.ConnectionStrings["S2CityDBConnectionString"].ToString();
            bool result;

            string query = "SELECT [WasteType], [Quantity], [AddressLine], [Pincode], [MobileNumber], [WasteStage] FROM [WasteManagement] WHERE ([RequestNumber] =" + sRequestNumber + ")";

            try
            {
                con.Open();
                cmd = new SqlCommand(query, con);

                objDR = cmd.ExecuteReader();

                while (objDR.Read())
                {
                    WasteType.Text = objDR.GetString(0);
                    Quantity.Text = objDR.GetInt32(1).ToString();
                    txtAddressLine.Text= objDR.GetString(2);
                    txtPinCode.Text = objDR.GetInt32(3).ToString();
                    txtMobile.Text = objDR.GetString(4).ToString();
                    //WasteStageStatus.Text= objDR.GetString(5).ToString();
                }
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

        protected void WasteStageStatus_TextChanged(object sender, EventArgs e)
        {
            Debug.Write(WasteStageStatus.Text);
        }
    }
}