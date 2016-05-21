using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace S2City
{
    public partial class ManageWastePickupRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateRequest_Click(object sender, EventArgs e)
        {
            string RequestNumber = Request.Form["rbtnSelect"].ToString();
            Debug.Write(RequestNumber);
            Response.Redirect("UpdateWastePickupRequest.aspx?RequestNumber="+ RequestNumber);
        }
    }
}