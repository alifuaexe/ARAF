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

using System.Data.Entity.Core.Objects;
using System.Diagnostics;
using System.IO;
using System.Data.Entity;

namespace ARAF_OPERATOR_PANEL
{
    public partial class ArafFrmOperatorInsert : DevExpress.XtraBars.Ribbon.RibbonForm
    {
      
        public static WORKSTATION currentTrainingInstance = null;//
         public int ProductionID = 0; //üretimID;
        
        private int OperatorID_ = 0;
        ArafFrmIsListesi FrmIsListesi;
        public int MakineID = 0;
        public ArafFrmOperatorInsert()
        {
            InitializeComponent(); 
         
        }

        private void barButtonItem1_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (OperatorID_!=0)
            Kaydet();
        }

        private void textEdit1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == 13)
            {

                using (ARAFEntities context = new ARAFEntities())
                {

                    var query11 = from contact in context.OPERATOR
                                 where
                     contact.OPR_BARCODE == txtBarkodNo.Text
                                 select contact;

                    // Iterate through the collection of Contact items.
                    foreach (var r in query11)
                    {
                        OperatorID_ = r.OPR_ID;
                        edtAdiSoyAdi.Text = r.OPR_NAME;

                    }
                    var Sections = from s in context.SHIFT

                                   orderby s.SHIFT_ID
                                   select new
                                   {
                                       SHIFT_ID = s.SHIFT_ID,
                                       SHIFT_CODE = s.SHIFT_CODE
                                   };

                    edtVardiya.Properties.DataSource = Sections.ToArray();
                    edtVardiya.Properties.DisplayMember = "SHIFT_CODE";
                    edtVardiya.Properties.ValueMember = "SHIFT_ID";
                    edtVardiya.EditValue = 1;
                    edtVardiya.Properties.ForceInitialize();
                    Kaydet();
                    foreach (var process in Process.GetProcessesByName("osk"))
                    {
                        process.Kill();
                    }
                }


            }
       }
        private void Kaydet()
        {
        ARAFEntities db = new ARAFEntities();
        PRODUCTION_OPERATOR opr = new PRODUCTION_OPERATOR();
            opr.PROD_ID = ProductionID;
            opr.OPR_ID = OperatorID_;
            opr.ROT_ID = 1;
            opr.PRD_WS_ID = MakineID;
            opr.PRD_STATUS = 0;
            opr.SHIFT_ID = Convert.ToInt32(edtVardiya.EditValue.ToString());
            db.PRODUCTION_OPERATOR.Add(opr);
            db.SaveChanges();
            Listele();
        }
        private void Listele()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd= from h in context.ARF_PRODUCTION_OPERATOR where h.PRD_WS_ID== MakineID && h.PRD_STATUS==0 select new { h.PRD_OPR_ID, h.OPR_NAME, h.WS_CODE, h.WS_NAME, h.COMPUTER_NAME};
                if (Prd != null)
                {
                    gridControlUretimOperator.DataSource = Prd.ToList();                

                }
               
            }

         }

        private void BtnKapat_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

 
        private void BtnIsListesi_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (gridViewUretimOperator.RowCount == 0)
            {
                MessageBox.Show("Önce Operator Tanımlayınız.");
                return;
            }
                if (FrmIsListesi == null)
            {
                
                FrmIsListesi = new ArafFrmIsListesi();
                //Form.ProductionID = 1;
                FrmIsListesi.MakineID = MakineID;
                if (FrmIsListesi.ShowDialog() == DialogResult.OK)
                {
                    FrmIsListesi.Dispose();
                    FrmIsListesi = null;
                    this.DialogResult = DialogResult.OK;
                    this.Close();
                    return;
                }
                FrmIsListesi.Dispose();
                FrmIsListesi = null;


            }
        }

        private void txtBarkodNo_Click(object sender, EventArgs e)
        {
            StartOSK();

        }
        static void StartOSK()
{

  string windir = Environment.GetEnvironmentVariable("WINDIR");

  string osk = null;

  if (osk == null)
  {

    osk = Path.Combine(Path.Combine(windir, "sysnative"), "osk.exe");
  if (!File.Exists(osk))
    {
      osk = null;
    }

  }

 

  if (osk == null)

  {

    osk = Path.Combine(Path.Combine(windir, "system32"), "osk.exe");

    if (!File.Exists(osk))

    {

      osk = null;

    }

  }


  if (osk == null)

  {

    osk = "osk.exe";

  }

  Process.Start(osk);
           

}

        private void btnSil_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (gridViewUretimOperator.RowCount != 0)
            {
                int PO_ID = Convert.ToInt32(gridViewUretimOperator.GetRowCellValue(gridViewUretimOperator.FocusedRowHandle, "PRD_OPR_ID").ToString());
                using (ARAFEntities Context = new ARAFEntities())
                {
                    PRODUCTION_OPERATOR po = new PRODUCTION_OPERATOR { PRD_OPR_ID = PO_ID };
                    Context.Entry(po).State = EntityState.Deleted;
                    Context.SaveChanges();
                }
                Listele();
            }
            else
                MessageBox.Show("Silinecek Kayıt Yok");

        }

        private void ArafFrmOperatorInsert_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void ArafFrmOperatorInsert_Load(object sender, EventArgs e)
        {
            Listele();
        }
    }


}