using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BusinessAccessLayer;

namespace ESociety
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        LoginBAL lbal = new LoginBAL();

        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LoginEntity logEn = new LoginEntity();
            logEn.username = Login1.UserName;
            logEn.password = Login1.Password;

            logEn.type = lbal.loginValidate(logEn);
            if (logEn.type == "resident")
            {
                Session["resiName"] = logEn.username;
                Response.Redirect("User Page.aspx");
            }
            else if(logEn.type == "admin")
            {
                Response.Redirect("AdminPage.aspx");

            }
            else
            {
                Login1.FailureText = "Invalid Username or Password";
            }
        }
    }
}