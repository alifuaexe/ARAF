//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ARAF_OPERATOR_PANEL
{
    using System;
    using System.Collections.Generic;
    
    public partial class ITEM_OPERATIONS
    {
        public int ITEM_OP_ID { get; set; }
        public int QUEUE { get; set; }
        public int ITEM_ID { get; set; }
        public int OP_ID { get; set; }
        public Nullable<double> OP_TIME_UNIT { get; set; }
        public int WS_ID { get; set; }
        public bool LAST_OP { get; set; }
    
        public virtual ITEMS ITEMS { get; set; }
        public virtual OPERATIONS OPERATIONS { get; set; }
        public virtual WORKSTATION WORKSTATION { get; set; }
    }
}