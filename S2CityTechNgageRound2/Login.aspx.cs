using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
//Database connection related
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
//Loggin
using System.Diagnostics;


namespace Cloud_Security_Assessment
{
    public partial class Login : System.Web.UI.Page
    {
        protected string messsage;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /*
            if (AuthenticateUser(txtUserName.Text, txtPassword.Text))
            {
                Session["Username"] = txtUserName.Text;
                FormsAuthentication.RedirectFromLoginPage("Dashboard.aspx", chkRemember.Checked);
                //if(txtUserName.Text.Equals("admin"))
                //    FormsAuthentication.RedirectFromLoginPage("Admin/UploadControls.aspx", chkRemember.Checked);
                //else
                //    FormsAuthentication.RedirectFromLoginPage("Dashboard.aspx", chkRemember.Checked);
            }
            else
            {
                messsage = "Incorrect Username and/or Password";
                pannelNotification.Visible = true;
            }*/

            pannelNotification.Visible = false; //Introducing login

            if (AuthenticateUser(txtUserName.Text, txtPassword.Text))
            {
                Session["Username"] = txtUserName.Text;
                Session["UserRole"] = GetUserRole(txtUserName.Text);
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                messsage = "Incorrect Username and/or Password";
                pannelNotification.Visible = true;
            }

        }

        public bool AuthenticateUser(string userId, string password)
        {

            /*CSADataAccessLayer dal = new CSADataAccessLayer();*/

            if ((userId.Length > 0) && (password.Length > 0))
            {
                if (ValidateUser(userId, password))
                    return true;
                else
                    return false;
            }
            else
            {
                return false;
            }

        }


        public bool ValidateUser(string UserId, string password)
        {
            bool status = false;

            SqlConnection con = new SqlConnection();
            SqlCommand cmd;
            int result;

            con.ConnectionString = ConfigurationManager.ConnectionStrings["S2CityDBConnectionString"].ToString();         
            
            cmd = new SqlCommand("Select count(*) from [dbo].[User] where UserId = '"+ UserId+"' and Password = '"+ password+"'", con);
          
            try
            {
                con.Open();
                result = Convert.ToInt32(cmd.ExecuteScalar());

                if (result == 1)
                    status = true;
                else
                    status = false;

            }
            catch(Exception error)
            {
                status = false;
                Debug.Write(error.Message);
                
            }
            finally
            {
                con.Close();
            }

            return status;

        }

        public String GetUserRole(string UserId)
        {
            
            SqlConnection con = new SqlConnection();
            SqlCommand cmd;
            String sRole = "";

            con.ConnectionString = ConfigurationManager.ConnectionStrings["S2CityDBConnectionString"].ToString();

            cmd = new SqlCommand("Select RoleName from [dbo].[UserRoles] UR, [S2CityDB].[dbo].[User] U where UR.RoleId = U.RoleId and U.UserId='"+ UserId+"'", con);

            try
            {
                con.Open();
                var output = cmd.ExecuteScalar();

                if (!(output is DBNull))
                    sRole = output.ToString();                

            }
            catch (Exception error)
            {
               
                Debug.Write(error.Message);

            }
            finally
            {
                con.Close();
            }
            return sRole;
           

        }

    }
}