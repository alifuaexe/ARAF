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
    public partial class ArafFrmDurusInsert : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        DevExpress.XtraBars.Docking2010.WindowsUIButton customBackButton;
        public int MakineID, ProductionID, OPR_ID_;
        public ArafFrmDurusInsert()
        {
            InitializeComponent();
        }
        

        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void ArafFrmDurusInsert_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void WorkStationPanel_ButtonClick(object sender, DevExpress.XtraBars.Docking2010.ButtonEventArgs e)
        {
            textEditDurus_Adi.Text = e.Button.Properties.Caption.ToString();
            textEditDurus_Adi.Tag = Convert.ToInt32(e.Button.Properties.Tag.ToString());
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            DurusBaslat();
        }

        private void barButtonItemKapat_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void DurusBaslat()
        {
            ARAFEntities db = new ARAFEntities();
            PRODUCTION_SUSPEND PS = new PRODUCTION_SUSPEND();
            PS.PROD_ID = ProductionID;
            PS.OPR_ID = 0;
            PS.SUSPEND_ID = Convert.ToInt32(textEditDurus_Adi.Tag.ToString());
            PS.SUSPEND_START_TIME = DateTime.Now;
            PS.SUSPEND_STATUS = 1;
            PS.COMMENT = textEditAciklama.Text;
            db.PRODUCTION_SUSPEND.Add(PS);
            db.SaveChanges();
            this.DialogResult = DialogResult.OK;
            this.Close();

        }

        private void ArafFrmDurusInsert_Load(object sender, EventArgs e)
        {
         
            WorkStationPanel.Buttons.Clear();
            using (ARAFEntities context = new ARAFEntities())
            {
                 var query = from contact in context.ARF_SUSPEND_WORKSTATION
                             where
                 contact.WS_ID == MakineID orderby contact.BUTTON_QUEUE
                              select contact;
                foreach (var result1 in query)
                {
                    customBackButton = new DevExpress.XtraBars.Docking2010.WindowsUIButton();
                    customBackButton.Caption = result1.SUSPEND_NAME;
                    customBackButton.Tag = result1.SUSPEND_ID;
                    WorkStationPanel.Buttons.Add(customBackButton);
                }
            }
        }
    }
}