using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cloud_Security_Assessment
{
    public partial class Dashboard : System.Web.UI.Page
    {
       /* CSADataAccessLayer dal;
        protected int surveyCount = 0;
        protected int controlCount = 0;
        protected int reportCount = 0;
       
        protected string notificationPanel = "No Notifications";
        StringBuilder sb = new StringBuilder("");
        */
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               // Session["Username"] = "Jayaprakash_g"; //Hardcoded, to be removed later

               // LoadNotificationPanel();
              //  reportCount = CountReportGenerated();
            //   controlCount = dal.CountCustomControls(Session["Username"].ToString());

               // notificationPanel = sb.ToString();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        
        public void LoadNotificationPanel()
        {
          /*
            dal = new CSADataAccessLayer();
            DataTable surveyList = dal.FetchAllSurveyForUser(Session["Username"].ToString());
            
            foreach (DataRow dr in surveyList.Rows)
            {
                surveyCount++;
                sb.Append(String.Format(@"<a href='#' class='list-group-item'>
                                            <i class='fa fa-bar-chart-o fa-fw'></i>
                                            The survey <strong>{0}</strong> was conducted on <em>{1}</em>
                                        </a>", dr["SurveyName"].ToString(), Convert.ToDateTime(dr["DateOfSurvey"])));
            }

            */
            
        }

        //public int CountReportGenerated()
        //{
        //    int result = 0;
        //    //string[] filePaths = Directory.GetFiles(HttpContext.Current.Server.MapPath("Report/"));
        //    string[] filePaths = Directory.GetFiles(Server.MapPath("Report/"));
        //    foreach (string filePath in filePaths)
        //    {
        //        string fileName = Path.GetFileName(filePath);
        //        string userNameSession = Session["Username"].ToString();
        //        string userName = fileName.Split('_')[0];
        //        if (userName.Equals(Session["Username"].ToString()))
        //            result++;
        //    }
        //    return result;
        //}
    }
}