using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cloud_Security_Assessment
{
    public partial class WastePickupRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("RaiseWastePickup.aspx");
        }
    }
}