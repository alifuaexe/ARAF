﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class ARAFEntities : DbContext
    {
        public ARAFEntities()
            : base("name=ARAFEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<FACTORY> FACTORY { get; set; }
        public virtual DbSet<ITEM_GROUP> ITEM_GROUP { get; set; }
        public virtual DbSet<ITEM_TREE> ITEM_TREE { get; set; }
        public virtual DbSet<ITEMS> ITEMS { get; set; }
        public virtual DbSet<OPERATIONS> OPERATIONS { get; set; }
        public virtual DbSet<OPERATOR> OPERATOR { get; set; }
        public virtual DbSet<PANEL_TYPE_DETAIL> PANEL_TYPE_DETAIL { get; set; }
        public virtual DbSet<PLANNING> PLANNING { get; set; }
        public virtual DbSet<PLC> PLC { get; set; }
        public virtual DbSet<PLC_DATA> PLC_DATA { get; set; }
        public virtual DbSet<PRODUCTION_OPERATOR> PRODUCTION_OPERATOR { get; set; }
        public virtual DbSet<PRODUCTION_PLANNING> PRODUCTION_PLANNING { get; set; }
        public virtual DbSet<ROTATION> ROTATION { get; set; }
        public virtual DbSet<SCRAP_REWORK> SCRAP_REWORK { get; set; }
        public virtual DbSet<SECTION> SECTION { get; set; }
        public virtual DbSet<SERVICE_LOG> SERVICE_LOG { get; set; }
        public virtual DbSet<SHIFT> SHIFT { get; set; }
        public virtual DbSet<SUSPEND> SUSPEND { get; set; }
        public virtual DbSet<SUSPEND_WORKSTATION> SUSPEND_WORKSTATION { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<SYSTEM_FORMS> SYSTEM_FORMS { get; set; }
        public virtual DbSet<SYSTEM_USER_DETAIL> SYSTEM_USER_DETAIL { get; set; }
        public virtual DbSet<SYSTEM_USER_GROUPS> SYSTEM_USER_GROUPS { get; set; }
        public virtual DbSet<SYSTEM_USERS> SYSTEM_USERS { get; set; }
        public virtual DbSet<TMP_ORDERS> TMP_ORDERS { get; set; }
        public virtual DbSet<TMP_PLANNING> TMP_PLANNING { get; set; }
        public virtual DbSet<UNIT_DEFINITION> UNIT_DEFINITION { get; set; }
        public virtual DbSet<WORKSTATION> WORKSTATION { get; set; }
        public virtual DbSet<WORKSTATION_DETAIL> WORKSTATION_DETAIL { get; set; }
        public virtual DbSet<WORKSTATION_GROUP> WORKSTATION_GROUP { get; set; }
        public virtual DbSet<ITEM_OPERATIONS> ITEM_OPERATIONS { get; set; }
        public virtual DbSet<ARF_ITEM_OPERATIONS> ARF_ITEM_OPERATIONS { get; set; }
        public virtual DbSet<ARF_ITEMS_LIST> ARF_ITEMS_LIST { get; set; }
        public virtual DbSet<ARF_PLANNING> ARF_PLANNING { get; set; }
        public virtual DbSet<ARF_PLANNING_WORKSTATION_ITEMS> ARF_PLANNING_WORKSTATION_ITEMS { get; set; }
        public virtual DbSet<ARF_SUSPEND_WORKSTATION> ARF_SUSPEND_WORKSTATION { get; set; }
        public virtual DbSet<ARF_SYSTEM_USERS> ARF_SYSTEM_USERS { get; set; }
        public virtual DbSet<ARF_TMP_PLANNING> ARF_TMP_PLANNING { get; set; }
        public virtual DbSet<ARF_W_COUNTER_DETAIL> ARF_W_COUNTER_DETAIL { get; set; }
        public virtual DbSet<ARF_W_ITEM_TREE> ARF_W_ITEM_TREE { get; set; }
        public virtual DbSet<ARF_W_SETTING_PLC> ARF_W_SETTING_PLC { get; set; }
        public virtual DbSet<ARF_WORKSTATIONS> ARF_WORKSTATIONS { get; set; }
        public virtual DbSet<PRODUCTION_SUSPEND> PRODUCTION_SUSPEND { get; set; }
        public virtual DbSet<SUSPEND_GROUP> SUSPEND_GROUP { get; set; }
        public virtual DbSet<PRODUCTION> PRODUCTION { get; set; }
        public virtual DbSet<ARF_PRODUCTION_OPERATOR> ARF_PRODUCTION_OPERATOR { get; set; }
        public virtual DbSet<ARF_OPERATOR_PANEL> ARF_OPERATOR_PANEL { get; set; }
        public virtual DbSet<ARF_PLANNING_STATUS> ARF_PLANNING_STATUS { get; set; }
        public virtual DbSet<ARF_PRODUCTION_SUSPEND> ARF_PRODUCTION_SUSPEND { get; set; }
    
        public virtual int ARF_PRODUCTION_PLANNIG_INSERT(Nullable<int> pLAN_ID, Nullable<int> wS_ID)
        {
            var pLAN_IDParameter = pLAN_ID.HasValue ?
                new ObjectParameter("PLAN_ID", pLAN_ID) :
                new ObjectParameter("PLAN_ID", typeof(int));
    
            var wS_IDParameter = wS_ID.HasValue ?
                new ObjectParameter("WS_ID", wS_ID) :
                new ObjectParameter("WS_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ARF_PRODUCTION_PLANNIG_INSERT", pLAN_IDParameter, wS_IDParameter);
        }
    
        public virtual int ARF_PRODUCTION_START(Nullable<int> wS_ID)
        {
            var wS_IDParameter = wS_ID.HasValue ?
                new ObjectParameter("WS_ID", wS_ID) :
                new ObjectParameter("WS_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ARF_PRODUCTION_START", wS_IDParameter);
        }
    
        public virtual int ARF_SP_ITEM_TREE_INSERT(Nullable<int> oRDER, Nullable<int> iTEM_ID, Nullable<int> mATERIAL_ID, Nullable<decimal> aMOUNT)
        {
            var oRDERParameter = oRDER.HasValue ?
                new ObjectParameter("ORDER", oRDER) :
                new ObjectParameter("ORDER", typeof(int));
    
            var iTEM_IDParameter = iTEM_ID.HasValue ?
                new ObjectParameter("ITEM_ID", iTEM_ID) :
                new ObjectParameter("ITEM_ID", typeof(int));
    
            var mATERIAL_IDParameter = mATERIAL_ID.HasValue ?
                new ObjectParameter("MATERIAL_ID", mATERIAL_ID) :
                new ObjectParameter("MATERIAL_ID", typeof(int));
    
            var aMOUNTParameter = aMOUNT.HasValue ?
                new ObjectParameter("AMOUNT", aMOUNT) :
                new ObjectParameter("AMOUNT", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ARF_SP_ITEM_TREE_INSERT", oRDERParameter, iTEM_IDParameter, mATERIAL_IDParameter, aMOUNTParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> ARF_PRODUCTION_STOP(Nullable<int> pROD_ID, Nullable<int> wS_ID)
        {
            var pROD_IDParameter = pROD_ID.HasValue ?
                new ObjectParameter("PROD_ID", pROD_ID) :
                new ObjectParameter("PROD_ID", typeof(int));
    
            var wS_IDParameter = wS_ID.HasValue ?
                new ObjectParameter("WS_ID", wS_ID) :
                new ObjectParameter("WS_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("ARF_PRODUCTION_STOP", pROD_IDParameter, wS_IDParameter);
        }
    
        public virtual int ARF_PRODUCTION_STOPP(Nullable<int> pROD_ID, Nullable<int> wS_ID)
        {
            var pROD_IDParameter = pROD_ID.HasValue ?
                new ObjectParameter("PROD_ID", pROD_ID) :
                new ObjectParameter("PROD_ID", typeof(int));
    
            var wS_IDParameter = wS_ID.HasValue ?
                new ObjectParameter("WS_ID", wS_ID) :
                new ObjectParameter("WS_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ARF_PRODUCTION_STOPP", pROD_IDParameter, wS_IDParameter);
        }
    }
}