namespace ARAF_OPERATOR_PANEL
{
    partial class ArafFrmOperatorInsert
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ArafFrmOperatorInsert));
            this.ribbon = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.btnSil = new DevExpress.XtraBars.BarButtonItem();
            this.BtnIsListesi = new DevExpress.XtraBars.BarButtonItem();
            this.BtnKapat = new DevExpress.XtraBars.BarButtonItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.BtnEkle = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup3 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.panel2 = new System.Windows.Forms.Panel();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.TabDetail = new DevExpress.XtraTab.XtraTabPage();
            this.gridControlUretimOperator = new DevExpress.XtraGrid.GridControl();
            this.gridViewUretimOperator = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.edtAdiSoyAdi = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtBarkodNo = new DevExpress.XtraEditors.TextEdit();
            this.edtVardiya = new DevExpress.XtraEditors.LookUpEdit();
            this.ribbonPageGroup4 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.TabDetail.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlUretimOperator)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewUretimOperator)).BeginInit();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtAdiSoyAdi.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBarkodNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtVardiya.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbon
            // 
            this.ribbon.ExpandCollapseItem.Id = 0;
            this.ribbon.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbon.ExpandCollapseItem,
            this.barButtonItem1,
            this.barButtonItem2,
            this.btnSil,
            this.BtnIsListesi,
            this.BtnKapat});
            resources.ApplyResources(this.ribbon, "ribbon");
            this.ribbon.MaxItemId = 1;
            this.ribbon.Name = "ribbon";
            this.ribbon.OptionsAnimation.PageCategoryShowAnimation = DevExpress.Utils.DefaultBoolean.True;
            this.ribbon.OptionsCustomizationForm.FormIcon = ((System.Drawing.Icon)(resources.GetObject("resource.FormIcon")));
            this.ribbon.PageHeaderItemLinks.Add(this.BtnKapat);
            this.ribbon.PageHeaderItemLinks.Add(this.BtnIsListesi);
            this.ribbon.PageHeaderItemLinks.Add(this.btnSil);
            this.ribbon.PageHeaderItemLinks.Add(this.barButtonItem2);
            this.ribbon.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1});
            this.ribbon.QuickToolbarItemLinks.Add(this.BtnIsListesi);
            this.ribbon.QuickToolbarItemLinks.Add(this.BtnKapat);
            this.ribbon.QuickToolbarItemLinks.Add(this.barButtonItem1);
            this.ribbon.QuickToolbarItemLinks.Add(this.btnSil);
            this.ribbon.QuickToolbarItemLinks.Add(this.barButtonItem2);
            this.ribbon.ShowPageHeadersMode = DevExpress.XtraBars.Ribbon.ShowPageHeadersMode.Hide;
            this.ribbon.StatusBar = this.ribbonStatusBar;
            // 
            // barButtonItem1
            // 
            resources.ApplyResources(this.barButtonItem1, "barButtonItem1");
            this.barButtonItem1.Glyph = ((System.Drawing.Image)(resources.GetObject("barButtonItem1.Glyph")));
            this.barButtonItem1.Id = 1;
            this.barButtonItem1.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("barButtonItem1.LargeGlyph")));
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // barButtonItem2
            // 
            resources.ApplyResources(this.barButtonItem2, "barButtonItem2");
            this.barButtonItem2.Glyph = ((System.Drawing.Image)(resources.GetObject("barButtonItem2.Glyph")));
            this.barButtonItem2.Id = 2;
            this.barButtonItem2.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("barButtonItem2.LargeGlyph")));
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            // 
            // btnSil
            // 
            resources.ApplyResources(this.btnSil, "btnSil");
            this.btnSil.Glyph = ((System.Drawing.Image)(resources.GetObject("btnSil.Glyph")));
            this.btnSil.Id = 3;
            this.btnSil.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnSil.LargeGlyph")));
            this.btnSil.Name = "btnSil";
            this.btnSil.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            this.btnSil.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSil_ItemClick);
            // 
            // BtnIsListesi
            // 
            resources.ApplyResources(this.BtnIsListesi, "BtnIsListesi");
            this.BtnIsListesi.Glyph = ((System.Drawing.Image)(resources.GetObject("BtnIsListesi.Glyph")));
            this.BtnIsListesi.Id = 4;
            this.BtnIsListesi.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("BtnIsListesi.LargeGlyph")));
            this.BtnIsListesi.Name = "BtnIsListesi";
            this.BtnIsListesi.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            this.BtnIsListesi.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.BtnIsListesi_ItemClick);
            // 
            // BtnKapat
            // 
            resources.ApplyResources(this.BtnKapat, "BtnKapat");
            this.BtnKapat.Glyph = ((System.Drawing.Image)(resources.GetObject("BtnKapat.Glyph")));
            this.BtnKapat.Id = 5;
            this.BtnKapat.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("BtnKapat.LargeGlyph")));
            this.BtnKapat.Name = "BtnKapat";
            this.BtnKapat.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            this.BtnKapat.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.BtnKapat_ItemClick);
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.BtnEkle,
            this.ribbonPageGroup2,
            this.ribbonPageGroup3,
            this.ribbonPageGroup1});
            this.ribbonPage1.Name = "ribbonPage1";
            // 
            // BtnEkle
            // 
            this.BtnEkle.ItemLinks.Add(this.barButtonItem1);
            this.BtnEkle.Name = "BtnEkle";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.ItemLinks.Add(this.btnSil);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            // 
            // ribbonPageGroup3
            // 
            this.ribbonPageGroup3.ItemLinks.Add(this.BtnIsListesi);
            this.ribbonPageGroup3.Name = "ribbonPageGroup3";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.ItemLinks.Add(this.BtnKapat);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            // 
            // ribbonStatusBar
            // 
            resources.ApplyResources(this.ribbonStatusBar, "ribbonStatusBar");
            this.ribbonStatusBar.Name = "ribbonStatusBar";
            this.ribbonStatusBar.Ribbon = this.ribbon;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.xtraTabControl1);
            resources.ApplyResources(this.panel2, "panel2");
            this.panel2.Name = "panel2";
            // 
            // xtraTabControl1
            // 
            resources.ApplyResources(this.xtraTabControl1, "xtraTabControl1");
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.TabDetail;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.TabDetail});
            // 
            // TabDetail
            // 
            this.TabDetail.Controls.Add(this.gridControlUretimOperator);
            this.TabDetail.Controls.Add(this.tableLayoutPanel1);
            this.TabDetail.Name = "TabDetail";
            resources.ApplyResources(this.TabDetail, "TabDetail");
            // 
            // gridControlUretimOperator
            // 
            resources.ApplyResources(this.gridControlUretimOperator, "gridControlUretimOperator");
            this.gridControlUretimOperator.MainView = this.gridViewUretimOperator;
            this.gridControlUretimOperator.MenuManager = this.ribbon;
            this.gridControlUretimOperator.Name = "gridControlUretimOperator";
            this.gridControlUretimOperator.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewUretimOperator});
            // 
            // gridViewUretimOperator
            // 
            this.gridViewUretimOperator.Appearance.ColumnFilterButton.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.ColumnFilterButton.Font")));
            this.gridViewUretimOperator.Appearance.ColumnFilterButton.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.ColumnFilterButtonActive.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.ColumnFilterButtonActive.Font")));
            this.gridViewUretimOperator.Appearance.ColumnFilterButtonActive.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.CustomizationFormHint.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.CustomizationFormHint.Font")));
            this.gridViewUretimOperator.Appearance.CustomizationFormHint.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.DetailTip.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.DetailTip.Font")));
            this.gridViewUretimOperator.Appearance.DetailTip.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.Empty.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.Empty.Font")));
            this.gridViewUretimOperator.Appearance.Empty.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.EvenRow.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.EvenRow.Font")));
            this.gridViewUretimOperator.Appearance.EvenRow.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.FilterCloseButton.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.FilterCloseButton.Font")));
            this.gridViewUretimOperator.Appearance.FilterCloseButton.Options.UseFont = true;
            this.gridViewUretimOperator.Appearance.FilterPanel.Font = ((System.Drawing.Font)(resources.GetObject("gridViewUretimOperator.Appearance.FilterPanel.Font")));
            this.gridViewUretimOperator.Appearance.FilterPanel.Options.UseFont = true;
            this.gridViewUretimOperator.GridControl = this.gridControlUretimOperator;
            this.gridViewUretimOperator.Name = "gridViewUretimOperator";
            // 
            // tableLayoutPanel1
            // 
            resources.ApplyResources(this.tableLayoutPanel1, "tableLayoutPanel1");
            this.tableLayoutPanel1.Controls.Add(this.labelControl2, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.edtAdiSoyAdi, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.labelControl3, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.labelControl1, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.txtBarkodNo, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.edtVardiya, 1, 2);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            // 
            // labelControl2
            // 
            resources.ApplyResources(this.labelControl2, "labelControl2");
            this.labelControl2.Name = "labelControl2";
            // 
            // edtAdiSoyAdi
            // 
            resources.ApplyResources(this.edtAdiSoyAdi, "edtAdiSoyAdi");
            this.edtAdiSoyAdi.MenuManager = this.ribbon;
            this.edtAdiSoyAdi.Name = "edtAdiSoyAdi";
            this.edtAdiSoyAdi.Properties.Appearance.Font = ((System.Drawing.Font)(resources.GetObject("edtAdiSoyAdi.Properties.Appearance.Font")));
            this.edtAdiSoyAdi.Properties.Appearance.Options.UseFont = true;
            // 
            // labelControl3
            // 
            resources.ApplyResources(this.labelControl3, "labelControl3");
            this.labelControl3.Name = "labelControl3";
            // 
            // labelControl1
            // 
            resources.ApplyResources(this.labelControl1, "labelControl1");
            this.labelControl1.Name = "labelControl1";
            // 
            // txtBarkodNo
            // 
            resources.ApplyResources(this.txtBarkodNo, "txtBarkodNo");
            this.txtBarkodNo.MenuManager = this.ribbon;
            this.txtBarkodNo.Name = "txtBarkodNo";
            this.txtBarkodNo.Properties.Appearance.Font = ((System.Drawing.Font)(resources.GetObject("txtBarkodNo.Properties.Appearance.Font")));
            this.txtBarkodNo.Properties.Appearance.Options.UseFont = true;
            this.txtBarkodNo.Click += new System.EventHandler(this.txtBarkodNo_Click);
            this.txtBarkodNo.KeyDown += new System.Windows.Forms.KeyEventHandler(this.textEdit1_KeyDown);
            // 
            // edtVardiya
            // 
            resources.ApplyResources(this.edtVardiya, "edtVardiya");
            this.edtVardiya.Name = "edtVardiya";
            this.edtVardiya.Properties.Appearance.Font = ((System.Drawing.Font)(resources.GetObject("edtVardiya.Properties.Appearance.Font")));
            this.edtVardiya.Properties.Appearance.Options.UseFont = true;
            this.edtVardiya.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(((DevExpress.XtraEditors.Controls.ButtonPredefines)(resources.GetObject("edtVardiya.Properties.Buttons"))))});
            // 
            // ribbonPageGroup4
            // 
            this.ribbonPageGroup4.ItemLinks.Add(this.BtnKapat);
            this.ribbonPageGroup4.Name = "ribbonPageGroup4";
            resources.ApplyResources(this.ribbonPageGroup4, "ribbonPageGroup4");
            // 
            // ArafFrmOperatorInsert
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.ribbonStatusBar);
            this.Controls.Add(this.ribbon);
            this.FormBorderEffect = DevExpress.XtraEditors.FormBorderEffect.None;
            this.Name = "ArafFrmOperatorInsert";
            this.Ribbon = this.ribbon;
            this.StatusBar = this.ribbonStatusBar;
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ArafFrmOperatorInsert_FormClosed);
            this.Load += new System.EventHandler(this.ArafFrmOperatorInsert_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).EndInit();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.TabDetail.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControlUretimOperator)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewUretimOperator)).EndInit();
            this.tableLayoutPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.edtAdiSoyAdi.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBarkodNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtVardiya.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbon;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup BtnEkle;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem btnSil;
        private DevExpress.XtraBars.BarButtonItem BtnIsListesi;
        private DevExpress.XtraBars.BarButtonItem BtnKapat;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup3;
        private System.Windows.Forms.Panel panel2;
        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage TabDetail;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private DevExpress.XtraEditors.TextEdit edtAdiSoyAdi;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtBarkodNo;
        private DevExpress.XtraGrid.GridControl gridControlUretimOperator;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewUretimOperator;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LookUpEdit edtVardiya;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup4;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
    }
}