using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.ComponentModel.DataAnnotations;
using System.IO;
using DevExpress.XtraLayout.Helpers;
using DevExpress.XtraLayout;

namespace ARAF_OPERATOR_PANEL
{
    public partial class ArafFrmIsListesi : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public int MakineID;
        Default df = new Default();
        public ArafFrmIsListesi()
        {
            InitializeComponent();


        }
        private void StokListele()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_PLANNING_WORKSTATION_ITEMS where h.WS_ID == MakineID select new { h.ITEM_CODE, h.ITEM_NAME };
                if (Prd != null)
                {
                    gridControlStokListesi.DataSource = Prd.ToList();

                }

            }

        }

        private void ArafFrmIsListesi_Load(object sender, EventArgs e)
        {
            df.RestoreLayout(gridViewStokListesi,"gridControlStokListesi_" + this.Name);
            df.RestoreLayout(gridViewIsListesi, "gridControlIsListesi_" + this.Name);
            df.RestoreLayout(gridViewPlanListe, "gridControlPlanListe_" + this.Name);
            StokListele();
        }
        private void IsListele(string ITEM_CODE_)
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_PLANNING where h.WS_ID == MakineID && h.PLAN_STATUS != 2 && h.ITEM_CODE == ITEM_CODE_ select h;
                if (Prd != null)
                {
                    gridControlIsListesi.DataSource = Prd.ToList();

                }

            }

        }

        private void EklenenPlanListesi()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_TMP_PLANNING where h.WS_ID == MakineID select h;
                if (Prd != null)
                {
                    gridControlPlanListe.DataSource = Prd.ToList();

                }

            }

        }


        private void gridViewStokListesi_Click(object sender, EventArgs e)
        {
            if (gridViewStokListesi.RowCount!=0)
            IsListele(gridViewStokListesi.GetRowCellValue(gridViewStokListesi.FocusedRowHandle, "ITEM_CODE").ToString());
        }

        private void simpleButtonPlanEkle_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(gridViewIsListesi.GetRowCellValue(gridViewIsListesi.FocusedRowHandle, "PLAN_ID").ToString());
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_TMP_PLANNING where h.WS_ID == MakineID && h.PLAN_ID == ID select h;
                if ((Prd != null) && (Prd.Count() != 0))
                {
                    MessageBox.Show("Plan Eklenmiş.");
                }
                else
                {
                    Kaydet();
                }

            }

        }
        private void Kaydet()
        {
            ARAFEntities db = new ARAFEntities();
            TMP_PLANNING tmpP = new TMP_PLANNING();
            tmpP.WS_ID = MakineID;
            tmpP.PLAN_ID = Convert.ToInt32(gridViewIsListesi.GetRowCellValue(gridViewIsListesi.FocusedRowHandle, "PLAN_ID").ToString());
            tmpP.MULTIPLIER = 1;
            tmpP.DIVIDING = 1;
            db.TMP_PLANNING.Add(tmpP);
            db.SaveChanges();
            EklenenPlanListesi();
        }

        private void Silme()
        {
            int ID = Convert.ToInt32(gridViewPlanListe.GetRowCellValue(gridViewPlanListe.FocusedRowHandle, "TMP_PLN_ID").ToString());
            using (ARAFEntities context = new ARAFEntities())
            {
                context.TMP_PLANNING.RemoveRange(context.TMP_PLANNING.Where(u => u.TMP_PLN_ID == ID));
                context.SaveChanges();
            }
            EklenenPlanListesi();
        }

        private void simpleButtonPlanSil_Click(object sender, EventArgs e)
        {
            Silme();
        }

        private void simpleButtonseciliIsiBaslat_Click(object sender, EventArgs e)
        {

            int PLAN_ID_ = Convert.ToInt32(gridViewPlanListe.GetRowCellValue(gridViewPlanListe.FocusedRowHandle, "PLAN_ID").ToString());

            using (ARAFEntities context = new ARAFEntities())
            {
                var query1 = from contact in context.ARF_TMP_PLANNING
                             where
                 contact.WS_ID == MakineID
                             select contact;

                // Iterate through the collection of Contact items.
                foreach (var result1 in query1)
                {
                    uretimPlanEkle(result1.PLAN_ID, result1.WS_ID);
                }
                UretimEkle(MakineID);          


            
                var query = (from contact1 in context.PRODUCTION_PLANNING
                             where contact1.WS_ID== MakineID &&  contact1.PLAN_ID== PLAN_ID_ && contact1.PROD_PLAN_STATUS==0
                             select contact1).First();
                query.PROD_PLAN_STATUS = 1;
                context.SaveChanges();

            }


            simpleButtonKapat_Click(sender, e);

        }
   
        public void uretimPlanEkle(int PLAN_ID, int WS_ID)
        {
            int dd;
            using (ARAFEntities context = new ARAFEntities())
            {
                dd =Convert.ToInt32(context.ARF_PRODUCTION_PLANNIG_INSERT(PLAN_ID, WS_ID).ToString());
            }

        }
        public void UretimEkle(int WS_ID)
        {
            int dd;
            using (ARAFEntities context = new ARAFEntities())
            {
                dd = Convert.ToInt32(context.ARF_PRODUCTION_START(WS_ID).ToString());
            }

        }

        private void simpleButtonTumunuBaslat_Click(object sender, EventArgs e)
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var query1 = from contact in context.ARF_TMP_PLANNING
                             where
                 contact.WS_ID ==   MakineID
                             select contact;

                // Iterate through the collection of Contact items.
                foreach (var result1 in query1)
                {
                    uretimPlanEkle(result1.PLAN_ID,result1.WS_ID);                 
                }
                UretimEkle(MakineID);
            }
            simpleButtonKapat_Click(sender,e);
        }

        private void simpleButtonKapat_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void ArafFrmIsListesi_FormClosed(object sender, FormClosedEventArgs e)
        {
            df.SaveLayoutToXml(gridViewStokListesi, "gridControlStokListesi_" + this.Name);
            df.SaveLayoutToXml(gridViewIsListesi, "gridControlIsListesi_" + this.Name);
            df.SaveLayoutToXml(gridViewPlanListe, "gridControlPlanListe_" + this.Name);
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
    }
}