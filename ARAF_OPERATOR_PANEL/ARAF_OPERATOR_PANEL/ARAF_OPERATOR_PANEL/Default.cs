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
     



    }
}
