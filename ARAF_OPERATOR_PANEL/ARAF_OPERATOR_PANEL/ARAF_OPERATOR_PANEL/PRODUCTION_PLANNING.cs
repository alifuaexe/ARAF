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
    
    public partial class PRODUCTION_PLANNING
    {
        public int PROD_PLAN_ID { get; set; }
        public Nullable<int> PROD_ID { get; set; }
        public Nullable<int> PLAN_ID { get; set; }
        public Nullable<int> WS_ID { get; set; }
        public Nullable<int> PRD_PLN_QUANTITY { get; set; }
        public Nullable<int> PRD_QUANTITY { get; set; }
        public Nullable<int> MULTIPLIER { get; set; }
        public Nullable<int> DIVIDING { get; set; }
        public Nullable<int> PROD_PLAN_STATUS { get; set; }
        public Nullable<System.DateTime> PROD_PLAN_START_DATE { get; set; }
        public Nullable<System.DateTime> PROD_PLAN_END_DATE { get; set; }
        public Nullable<System.DateTime> LAST_READ_DATE { get; set; }
    
        public virtual PLANNING PLANNING { get; set; }
        public virtual WORKSTATION WORKSTATION { get; set; }
        public virtual PRODUCTION PRODUCTION { get; set; }
    }
}