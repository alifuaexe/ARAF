using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ARAF_OPERATOR_PANEL
{


    class Default
    {
        string FileName = @"C:\ARAF\";
        public void RestoreLayout(DevExpress.XtraGrid.Views.Grid.GridView Grid, String DizaynName)
        {
            Grid.OptionsLayout.Columns.RemoveOldColumns = false;
            Grid.OptionsLayout.Columns.StoreAllOptions = true;
            Grid.OptionsLayout.StoreAllOptions = true;
            if (System.IO.File.Exists(FileName + "" + DizaynName + ".xml"))
            {
                Grid.RestoreLayoutFromXml(FileName + "" + DizaynName + ".xml");
            }
        }
        public void SaveLayoutToXml(DevExpress.XtraGrid.Views.Grid.GridView Grid, string DizaynName)
        {
            Grid.OptionsLayout.Columns.RemoveOldColumns = false;
            Grid.OptionsLayout.Columns.StoreAllOptions = true;
            Grid.OptionsLayout.StoreAllOptions = true;
            //if (System.IO.File.Exists(FileName + "" + DizaynName + ".xml"))
            //{
            Grid.SaveLayoutToXml(FileName + "" + DizaynName + ".xml");
           // }
        }
        public int WSG_IDGET(int WS_ID)
        {
            int sonuc = 0;
            using (ARAFEntities context = new ARAFEntities())
            {
                
                var query = from contact in context.WORKSTATION
                            where
                contact.WS_ID == WS_ID
                            select contact;

                // Iterate through the collection of Contact items.
                foreach (var result in query)
                {
                    sonuc = Convert.ToInt32(result.WSG_ID);
                }
            }
            return sonuc;
          }
        public int WORK_ORDER_TYPE(int WS_ID)
        {
            int sonuc = 0;
            using (ARAFEntities context = new ARAFEntities())
            {

                var query = from contact in context.WORKSTATION
                            where
                contact.WS_ID == WS_ID
                            select contact;

                // Iterate through the collection of Contact items.
                foreach (var result in query)
                {
                    sonuc = Convert.ToInt32(result.WORK_ORDER_TYPE);
                }
            }
            return sonuc;
        }




    }
}
