//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccessLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class ServiceProvider
    {
        public long aadhar { get; set; }
        public string spname { get; set; }
        public long contact { get; set; }
        public int societyid { get; set; }
        public string type { get; set; }
        public Nullable<int> rating { get; set; }
    
        public virtual Society Society { get; set; }
    }
}
