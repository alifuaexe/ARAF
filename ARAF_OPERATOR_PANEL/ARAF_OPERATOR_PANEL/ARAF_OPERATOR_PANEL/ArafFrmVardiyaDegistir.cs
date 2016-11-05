using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars;

namespace ARAF_OPERATOR_PANEL
{
    public partial class ArafFrmVardiyaDegistir : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public int SHIFT_ID = 0;
        public ArafFrmVardiyaDegistir()
        {
            InitializeComponent();
        }

        private void ArafFrmVardiyaDegistir_Load(object sender, EventArgs e)
        {
            Listele();
        }
        private void Listele()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.SHIFT  select h;
                if (Prd != null)
                {
                    gridControlVardiyaListesi.DataSource = Prd.ToList();

                }

            }

        }

        private void barButtonItemTamam_ItemClick(object sender, ItemClickEventArgs e)
        {
            SHIFT_ID = Convert.ToInt32(gridViewVardiyaListesi.GetRowCellValue(gridViewVardiyaListesi.FocusedRowHandle, "SHIFT_ID").ToString());
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void barButtonItemKapaT_ItemClick(object sender, ItemClickEventArgs e)
        {
            SHIFT_ID = 0;
           this.DialogResult = DialogResult.OK;
            this.Close();
        }
    }
}