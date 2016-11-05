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
    public partial class ArafFrmUretimBitir : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        Default df = new Default();
        public int MakineID = 0;
        ArafFrmVardiyaDegistir ArafVardiyaDegistir;
        private int SHIFT_ID_;
        public int SHIFT_ID { get { return SHIFT_ID_; } set { SHIFT_ID_ = value; } }
        public ArafFrmUretimBitir()
        {
            InitializeComponent();
        }
    
        private void barButtonItem1_ItemClick(object sender, ItemClickEventArgs e)
        {

        }
        private void Listele()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_OPERATOR_PANEL where h.WS_ID == MakineID select h;
                if (Prd != null)
                {
                    gridControlIslistesi.DataSource = Prd.ToList();

                }

            }

        }

        private void ArafFrmUretimBitir_Load(object sender, EventArgs e)
        {
            df.RestoreLayout(gridViewIslistesi, this.Name);
            Listele();
        }

        private void barButtonItemVardiyaDegistir_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ArafVardiyaDegistir == null)
            {
                ArafVardiyaDegistir = new ArafFrmVardiyaDegistir();
               if (ArafVardiyaDegistir.ShowDialog() == DialogResult.OK)
                {
                    SHIFT_ID = ArafVardiyaDegistir.SHIFT_ID;
                    ArafVardiyaDegistir.Dispose();
                    ArafVardiyaDegistir = null;

                }

            }
        }
        private void VardiyaDegistir()
        {


        }
        public void UretimBitir(int _PROD_ID_, int _WS_ID)
        {
            int dd;
            using (ARAFEntities context = new ARAFEntities())
            {
                dd = Convert.ToInt32(context.ARF_PRODUCTION_STOPP(_PROD_ID_, _WS_ID).ToString());
            }

        }

        private void barButtonItemIsSonlandir_ItemClick(object sender, ItemClickEventArgs e)
        {
            UretimBitir(Convert.ToInt32(gridViewIslistesi.GetRowCellValue(gridViewIslistesi.FocusedRowHandle, "PROD_ID").ToString()),
                  Convert.ToInt32(gridViewIslistesi.GetRowCellValue(gridViewIslistesi.FocusedRowHandle, "WS_ID").ToString()));
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void ArafFrmUretimBitir_FormClosed(object sender, FormClosedEventArgs e)
        {

            df.SaveLayoutToXml(gridViewIslistesi, this.Name);
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

         
        
    }
}