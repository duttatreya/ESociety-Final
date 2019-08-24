using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using DataAccessLayer;

namespace BusinessAccessLayer
{
    public class LoginBAL
    {
        LoginDAL lDal = new LoginDAL();

        public string loginValidate(LoginEntity logEn)
        {
            return lDal.loginValidate(logEn);
        }
        public string changePassword(LoginEntity logEn,string newPass)
        {
            return lDal.changePassword(logEn,newPass);
        }

    }
}