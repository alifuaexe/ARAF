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
using DevExpress.XtraGrid.Columns;
using System.Threading;
using DevExpress.XtraGrid.Localization;
using System.Drawing.Drawing2D;
using System.IO;
using DevExpress.XtraCharts;
using DevExpress.XtraBars.Ribbon;

namespace ARAF_OPERATOR_PANEL
{
    public partial class ArafFrmOperatorPanel : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        private int WS_ID_;
        private int PlanEkleBut = 0;
        public int WS_ID { get { return WS_ID_; } set { WS_ID_ = value; } }

        public object XRChart { get; private set; }

        public static WORKSTATION currentTrainingInstance = null;//
        DevExpress.XtraBars.Docking2010.WindowsUIButton customBackButton;
        ArafFrmOperatorInsert ArafOperatorInsert;
        ArafFrmDurusInsert ArafDurusInsert;
        ArafFrmUretimBitir ArafUretimBitir;
        ArafFrmPlanDurumu ArafPlanDurumu;
        ArafFrmIsListesi ArafPlanEkle;
        Default df = new Default();
       


        public int MakineID=0, ProductionID=0, OPR_ID_=0,SUSPEND_ACTIVE=0;
        public float widthRatio = 0;
        public float heightRatio =0;
       

        public ArafFrmOperatorPanel()
        {
            InitializeComponent();
        }

      
        private void RibbonForm1_Load(object sender, EventArgs e)
        {
            WorkStationPanel.Buttons.Clear();
            using (ARAFEntities context = new ARAFEntities())
            {
                string LastName = Environment.MachineName;
                var query1 = from contact in context.WORKSTATION
                             where
                 contact.COMPUTER_NAME == LastName
                             select contact;

                // Iterate through the collection of Contact items.
                foreach (var result1 in query1)
                {
                    customBackButton = new DevExpress.XtraBars.Docking2010.WindowsUIButton();
                    customBackButton.Caption = result1.WS_NAME;
                    customBackButton.Tag = result1.WS_ID;
                    WorkStationPanel.Buttons.Add(customBackButton);
                }
            }

            df.RestoreLayout(gridViewPlandakiIsler, "gridViewPlandakiIsler_" + this.Name);
            widthRatio = Screen.PrimaryScreen.Bounds.Width /  1024;
             heightRatio = Screen.PrimaryScreen.Bounds.Height / 768;
            SizeF scale = new SizeF(widthRatio, heightRatio);
            this.Scale(scale);
            foreach (Control control in this.Controls)
            {
                control.Font = new Font("Verdana", control.Font.SizeInPoints * heightRatio * widthRatio);
            }
            PanelTipiAyarla(1, cardViewSiparis_Urun);
            PanelTipiAyarla(2, cardViewMiktar);
            Makinebilgisi();
            PlandakiIsler(MakineID);
           
            ChardDoldur();
   



        }

    
        public class Production_Information
        {
            public Production_Information()
            { }
            private int WS_ID_;

            public int WS_ID { get { return WS_ID_; } set { WS_ID_ = value; } }

            private string WS_NAME_;
            public string WS_NAME { get { return WS_NAME_; } set { WS_NAME_ = value; } }

            private int PROD_ID_;
            public int PROD_ID { get { return PROD_ID_; } set { PROD_ID_ = value; } }



        }
      
        private void ChardDoldur()
        {
            int i = 0;
            XYDiagram diagram = (XYDiagram)chartControlDuruslar.Diagram;

            using (ARAFEntities context = new ARAFEntities())
            {
             
                var query = from contact in context.ARF_PRODUCTION_SUSPEND
                            where
                contact.PROD_ID== ProductionID 
                            orderby contact.SUSPEND_TIME
                            select contact;

                // Iterate through the collection of Contact items.
                foreach (var result in query)
                {

                    

                    this.chartControlDuruslar.Titles.Clear();//Chart da varsayılan olarak gelen başlıkları temizliyoruz.
                    this.chartControlDuruslar.Series.Clear();//Chart da varsayılan olarak gelen series (Liste) temizliyoruz.

                   
                    // Add two custom labels to the X-axis' collection.
                    diagram.AxisX.CustomLabels.Add(new CustomAxisLabel(result.SUSPEND_NAME.ToString()));
                    diagram.AxisX.CustomLabels[i].AxisValue = result.SUSPEND_NAME.ToString();
                    diagram.AxisX.Title.Text = "";
                    diagram.AxisX.Label.TextColor = Color.Red;
                   // diagram.AxisX.Label.Visible = true;
                    diagram.AxisX.Visibility = DevExpress.Utils.DefaultBoolean.True;
                    Series series1 = new Series("DURUŞ ADI", ViewType.Bar);
                    chartControlDuruslar.Series.Add(series1);
                    series1.DataSource = query.ToList();
                    series1.ArgumentScaleType = ScaleType.Qualitative;
                    series1.ArgumentDataMember = "SUSPEND_NAME";
                    series1.ValueScaleType = ScaleType.Numerical;
                    SideBySideBarSeriesView view = series1.View as SideBySideBarSeriesView;
                    view.BarWidth = 0.1;
                   
                    series1.LabelsVisibility = DevExpress.Utils.DefaultBoolean.True;
                    
                    chartControlDuruslar.Legend.Visibility = DevExpress.Utils.DefaultBoolean.True;

                    series1.ValueDataMembers.AddRange(new string[] { "SUSPEND_TIME" });
                    //((pie)chartControl2.Diagram).AxisY.Visible = false;
                    i++;

                }
            }         


        }
        

        private void WorkStationPanel_ButtonClick_1(object sender, DevExpress.XtraBars.Docking2010.ButtonEventArgs e)
        {
            textEditMakineAdi.Text = ""; ;
            textEditOperatorAdi.Text = "";
            gridControlSiparis_urun.DataSource = null;
            gridControlMiktar.DataSource = null;
           // this.arcScaleComponentVerimlilik.Value = 0;
            ProductionID = 0;
            SUSPEND_ACTIVE = 0;
            textEditMakineAdi.Text = e.Button.Properties.Caption.ToString();
            if (MakineID!= Convert.ToInt32(e.Button.Properties.Tag.ToString()))
                e.Button.Properties.Appearance.ForeColor = Color.Transparent;

            MakineID = Convert.ToInt32(e.Button.Properties.Tag.ToString());
            ÜretmBilgileri(MakineID);
            PlandakiIsler(MakineID);



        }
        private void PlandakiIsler(int WSID_)
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_OPERATOR_PANEL where h.WS_ID == MakineID && h.PLAN_STATUS != 2 && h.WS_ID == WSID_ && h.PROD_PLAN_STATUS==0 select new { h.PLAN_ID,h.WORK_ORDER_NO, h.OP_NAME, h.PLAN_DATE, h.ITEM_CODE, h.ITEM_NAME, h.CUSTOMER_NAME, h.WORK_ORDER_QUANTITY };
                if (Prd != null)
                {
                    gridControlPlandakiIsler.DataSource = Prd.ToList();

                }

            }

        }

        private void Makinebilgisi()
        {
            
                MakineID = Convert.ToInt32(WorkStationPanel.Buttons[0].Properties.Tag.ToString());
                ÜretmBilgileri(MakineID);
                timer1.Enabled = true;                   
        

       }
        private void ÜretmBilgileri(int WSID_)
        {
            textEditMakineAdi.Text = ""; ;
            textEditVardiyaAdi.Text = "";
            textEditOperatorAdi.Text = "";
            gridControlSiparis_urun.DataSource = null;
            gridControlMiktar.DataSource = null;
        //    this.arcScaleComponentVerimlilik.Value = 0;
            ProductionID = 0;
            SUSPEND_ACTIVE = 0;
            using (ARAFEntities context = new ARAFEntities())
            {
                var query = (from contact in context.ARF_OPERATOR_PANEL
                            where
                contact.WS_ID == WSID_ && contact.PROD_PLAN_STATUS==1 orderby contact.PROD_PLAN_ID
                             select contact);
                foreach (var result in query)
                {
                    textEditVardiyaAdi.Text = result.SHIFT_CODE.ToString();
                    textEditMakineAdi.Text = result.WS_NAME.ToString();
                    textEditOperatorAdi.Text = result.OPR_NAME.ToString();
                    ProductionID = Convert.ToInt32(result.PROD_ID.ToString());
                    gridControlSiparis_urun.DataSource = query.ToList();                   
                    gridControlMiktar.DataSource= query.ToList();
                    SUSPEND_ACTIVE = result.ACTIVE_SUSPEND_TIME;


              //      this.arcScaleComponentVerimlilik.Value = Convert.ToSingle(result.PRODUCTIVITY.ToString());
                    if (result.PRODUCTION_STATUS.ToString() != "URETIM")
                    {
                        ribbonPage1.Appearance.BackColor= System.Drawing.ColorTranslator.FromHtml(result.COLOR.ToString());
                  

                    }
                    else
                    {
                        ribbonPage1.Appearance.BackColor = Color.Transparent;
                  
                    }


                }
            }

        }   

     
        private void RowLariGizle(DevExpress.XtraGrid.Views.Card.CardView Card_)
        {            
            for (int i = 0; i <= Card_.Columns.Count-1; i++)
            {
                Card_.Columns[i].Visible =false;
            }
        }
        

        private void PanelTipiAyarla(int PanelTipi,DevExpress.XtraGrid.Views.Card.CardView cardTmp)
        {
            using (ARAFEntities context = new ARAFEntities())
            {

                RowLariGizle(cardTmp);            
                var query = from contact in context.PANEL_TYPE_DETAIL
                            where 
                contact.ACTIVE == 1 && contact.PANEL_ID== PanelTipi
                            orderby contact.QUEUE
                            select contact;

                // Iterate through the collection of Contact items.
                foreach (var result in query)
                {
                    GridColumn column = new GridColumn();
                    column.FieldName = result.FIELD_NAME.ToString();
                    column.Caption = result.FIELD_CAPTION.ToString();                                
                    column.Visible = true;
                    cardTmp.Columns.Add(column);
                }

            }
        }  


        private void timer1_Tick(object sender, EventArgs e)
        {

            if (MakineID != 0)
            {
                ÜretmBilgileri(MakineID);
                ChardDoldur();
            }

        }

        private void barButtonItemDurus_Baslat_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ProductionID == 0)
            {
                MessageBox.Show("Açık Üretim Yok. Duruş İşlemi Yapamazsınız.");
                return;
            }
            if (ArafDurusInsert == null)
            {
                ArafDurusInsert = new ArafFrmDurusInsert();
                ArafDurusInsert.ProductionID = ProductionID;
                ArafDurusInsert.MakineID = MakineID;
                if (ArafDurusInsert.ShowDialog() == DialogResult.OK)
                {
                    ArafDurusInsert.Dispose();
                    ArafDurusInsert = null;

                }

            }
        }

        private void barButtonItemDurus_Bitir_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ProductionID == 0)
            {
                MessageBox.Show("Açık Üretim Yok. Duruş Bitirme İşlemi Yapamazsınız.");
                return;
            }
            if  (SUSPEND_ACTIVE == 0)
            {
                MessageBox.Show("Açık Duruş Yok. Duruş Bitirme İşlemi Yapamazsınız.");
                return;
            }

            using (ARAFEntities context = new ARAFEntities())
            {
                var query1 = (from contact in context.PRODUCTION_SUSPEND
                              where
                  contact.PROD_ID == ProductionID && contact.SUSPEND_STATUS == 1
                              select contact).First();
                query1.SUSPEND_END_TIME = DateTime.Now;
                query1.SUSPEND_STATUS = 0;
                context.SaveChanges();


            }
        }

        private void ArafFrmOperatorPanel_FormClosed(object sender, FormClosedEventArgs e)
        {
            df.SaveLayoutToXml(gridViewPlandakiIsler, "gridViewPlandakiIsler_" + this.Name);
         
        }

        private void barButtonItemIsDurumu_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ArafPlanDurumu == null)
            {
                ArafPlanDurumu = new ArafFrmPlanDurumu();              
                if (ArafPlanDurumu.ShowDialog() == DialogResult.OK)
                {
                    ArafPlanDurumu.Dispose();
                    ArafPlanDurumu = null;
                }

            }
        }

        private void PlanDurumuListe()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_PLANNING_STATUS select h;
                if (Prd != null)
                {
                 //   gridControlPlanDurumu.DataSource = Prd.ToList();

                }
            }

        }


        private void backstageViewTabItem1_ItemPressed(object sender, BackstageViewItemEventArgs e)
        {
            PlanDurumuListe();
        }

        private void ribbon_Click(object sender, EventArgs e)
        {

        }

        private void simpleButtonPlandakiIsiBaslat_Click(object sender, EventArgs e)
        {

        }

        private void barButtonItemPlanEkle_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ProductionID == 0)
            {
                MessageBox.Show("Açık Üretim Yok. Plan ekleme İşlemi Yapamazsınız.");
                return;
            }
            if (ArafPlanEkle == null)
            {
                ArafPlanEkle = new ArafFrmIsListesi();
                ArafPlanEkle.MakineID = MakineID;
                ArafPlanEkle.PlanEkle_ = 1;
                if (ArafPlanEkle.ShowDialog() == DialogResult.OK)
                {
                    ArafPlanEkle.Dispose();
                    ArafPlanEkle = null;
                    PlandakiIsler(MakineID);

                }

            }
        }

        private void barButtonItemUretimBitir_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ProductionID == 0)
            {
                MessageBox.Show("Açık Üretim Yok. Bitirme İşlemi Yapamazsınız.");
                return;
            }
            UretimBitir(ProductionID,
                 MakineID);
        }

      

        private void barButtonItemUretimBaslat_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ProductionID!=0)
            {
                MessageBox.Show("Açık Üretim Var.");
                return;
            }
            if (MakineID==0)
            {
                MessageBox.Show("Makine Seçiniz.");
                return;
            }
            if (gridViewPlandakiIsler.DataRowCount!=0)
            {
                MessageBox.Show("Plandaki İşlerden Üretim Başlatınız.");
                xtraTabControlUretim.SelectedTabPageIndex = 1;
                return;
            }
            if (ArafOperatorInsert == null)
            {
                ArafOperatorInsert = new ArafFrmOperatorInsert();
                ArafOperatorInsert.MakineID = MakineID;
                if (ArafOperatorInsert.ShowDialog() == DialogResult.OK)
                {
                    ArafOperatorInsert.Dispose();
                    ArafOperatorInsert = null;

                }

            }

        }
        public void UretimBitir(int _PROD_ID_, int _WS_ID)
        {
            int dd;
            using (ARAFEntities context = new ARAFEntities())
            {
                dd = Convert.ToInt32(context.ARF_PRODUCTION_STOPP(_PROD_ID_, _WS_ID).ToString());
            }

        }






    }
}