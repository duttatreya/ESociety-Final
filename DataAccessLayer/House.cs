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
    
    public partial class House
    {
        public House()
        {
            this.Residents = new HashSet<Resident>();
        }
    
        public string houseno { get; set; }
        public int societyid { get; set; }
    
        public virtual Society Society { get; set; }
        public virtual ICollection<Resident> Residents { get; set; }
    }
}
