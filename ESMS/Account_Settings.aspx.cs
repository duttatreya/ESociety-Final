using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BusinessAccessLayer;

namespace ESociety_Management_System
{
    public partial class Account_settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {
            LoginEntity logEn = new LoginEntity();
            logEn.username = Session["resiName"].ToString();
            logEn.password = ChangePassword1.CurrentPassword.ToString();
            string newPass = ChangePassword1.ConfirmNewPassword.ToString();
            LoginBAL lBal = new LoginBAL();
            string res = lBal.changePassword(logEn, newPass);
            if (res == "Password Changed")
            {
                
            }
        }
    }
}