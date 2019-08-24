using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;

namespace DataAccessLayer
{
    public class LoginDAL
    {
        public string loginValidate(LoginEntity logEn)
        {
            //string res = "";
            try
            {
                ESocietyEntities es = new ESocietyEntities();
                Login lg = new Login();
                var res = es.Logins.Where(x => x.username == logEn.username && x.password == logEn.password).Select(x => x.type).SingleOrDefault();
                return res.ToString();   
            }
            catch(Exception ex)
            {
                return ex.Message;
            }
        }

        public string changePassword(LoginEntity logEn,string newPass)
        {
            try
            {   
                ESocietyEntities es = new ESocietyEntities();
               // Login lg = new Login();
                var res = es.Logins.Where(x => x.username == logEn.username && x.password == logEn.password).SingleOrDefault();
                if (res == null)
                {
                    throw new Exception("User Details Invalid");

                }
                else
                {
                    res.password = newPass;
                    var changes = es.SaveChanges();
                    if (changes > 0)
                        return "Successfully Changed Password";
                    else
                        return "Could Not Change Password";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //return string.Empty;
        }
    }
}
