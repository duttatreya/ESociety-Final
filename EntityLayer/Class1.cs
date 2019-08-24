using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class LoginEntity
    {
        public string username { get; set; }
        public string password { get; set; }
        public string type { get; set; }
    }

    public class ServiceEntity
    {
        public long adhaar { get; set; }
        public string name { get; set; }
        public long contact { get; set; }
        public string type { get; set; }
        public int societyId { get; set; }
        public int rating { get; set; }
    }

    public class SocietyEntity
    {
        public string name { get; set; }
        public string area { get; set; }
    }

    public class ResidentEntity
    {
        public int intercom { get; set; }
        public int houseNo { get; set; }
        public string name { get; set; }
        public long contact { get; set; }
    }

    public class HouseEntity
    {
        public string houseNo { get; set; }
        public int societyId { get; set; }
    }
}
