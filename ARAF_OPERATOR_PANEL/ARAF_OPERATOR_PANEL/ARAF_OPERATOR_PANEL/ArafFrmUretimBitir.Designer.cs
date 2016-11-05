namespace ARAF_OPERATOR_PANEL
{
    partial class ArafFrmUretimBitir
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ArafFrmUretimBitir));
            this.ribbon = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.barButtonItemVardiyaDegistir = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemIsDegistir = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemIsSonlandir = new DevExpress.XtraBars.BarButtonItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup3 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.gridControlIslistesi = new DevExpress.XtraGrid.GridControl();
            this.gridViewIslistesi = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlIslistesi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewIslistesi)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbon
            // 
            this.ribbon.ExpandCollapseItem.Id = 0;
            this.ribbon.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbon.ExpandCollapseItem,
            this.barButtonItemVardiyaDegistir,
            this.barButtonItemIsDegistir,
            this.barButtonItemIsSonlandir});
            this.ribbon.Location = new System.Drawing.Point(0, 0);
            this.ribbon.MaxItemId = 4;
            this.ribbon.Name = "ribbon";
            this.ribbon.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1});
            this.ribbon.ShowPageHeadersMode = DevExpress.XtraBars.Ribbon.ShowPageHeadersMode.Hide;
            this.ribbon.Size = new System.Drawing.Size(1217, 147);
            this.ribbon.StatusBar = this.ribbonStatusBar;
            // 
            // barButtonItemVardiyaDegistir
            // 
            this.barButtonItemVardiyaDegistir.Caption = "Variya Değiştir";
            this.barButtonItemVardiyaDegistir.Id = 1;
            this.barButtonItemVardiyaDegistir.Name = "barButtonItemVardiyaDegistir";
            this.barButtonItemVardiyaDegistir.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barButtonItemVardiyaDegistir.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemVardiyaDegistir_ItemClick);
            // 
            // barButtonItemIsDegistir
            // 
            this.barButtonItemIsDegistir.Caption = "İş Değiştir";
            this.barButtonItemIsDegistir.Id = 2;
            this.barButtonItemIsDegistir.Name = "barButtonItemIsDegistir";
            this.barButtonItemIsDegistir.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barButtonItemIsSonlandir
            // 
            this.barButtonItemIsSonlandir.Caption = "İş Sonlandır";
            this.barButtonItemIsSonlandir.Glyph = ((System.Drawing.Image)(resources.GetObject("barButtonItemIsSonlandir.Glyph")));
            this.barButtonItemIsSonlandir.Id = 3;
            this.barButtonItemIsSonlandir.Name = "barButtonItemIsSonlandir";
            this.barButtonItemIsSonlandir.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            this.barButtonItemIsSonlandir.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemIsSonlandir_ItemClick);
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1,
            this.ribbonPageGroup2,
            this.ribbonPageGroup3});
            this.ribbonPage1.Name = "ribbonPage1";
            this.ribbonPage1.Text = "ribbonPage1";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.ItemLinks.Add(this.barButtonItemIsSonlandir);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.ItemLinks.Add(this.barButtonItemIsDegistir);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            // 
            // ribbonPageGroup3
            // 
            this.ribbonPageGroup3.ItemLinks.Add(this.barButtonItemVardiyaDegistir);
            this.ribbonPageGroup3.Name = "ribbonPageGroup3";
            // 
            // ribbonStatusBar
            // 
            this.ribbonStatusBar.Location = new System.Drawing.Point(0, 641);
            this.ribbonStatusBar.Name = "ribbonStatusBar";
            this.ribbonStatusBar.Ribbon = this.ribbon;
            this.ribbonStatusBar.Size = new System.Drawing.Size(1217, 23);
            // 
            // gridControlIslistesi
            // 
            this.gridControlIslistesi.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControlIslistesi.Location = new System.Drawing.Point(0, 147);
            this.gridControlIslistesi.MainView = this.gridViewIslistesi;
            this.gridControlIslistesi.MenuManager = this.ribbon;
            this.gridControlIslistesi.Name = "gridControlIslistesi";
            this.gridControlIslistesi.Size = new System.Drawing.Size(1217, 494);
            this.gridControlIslistesi.TabIndex = 5;
            this.gridControlIslistesi.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewIslistesi});
            // 
            // gridViewIslistesi
            // 
            this.gridViewIslistesi.Appearance.ColumnFilterButton.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gridViewIslistesi.Appearance.ColumnFilterButton.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.ColumnFilterButtonActive.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.ColumnFilterButtonActive.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.CustomizationFormHint.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.CustomizationFormHint.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.DetailTip.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.DetailTip.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.Empty.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.Empty.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.EvenRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.EvenRow.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.FilterCloseButton.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.FilterCloseButton.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.FilterPanel.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.FilterPanel.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.FixedLine.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.FixedLine.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.FocusedCell.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.FocusedCell.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.FocusedRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.FocusedRow.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.FooterPanel.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.FooterPanel.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.GroupButton.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.GroupButton.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.HeaderPanel.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.HeaderPanel.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.Row.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.Row.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.RowSeparator.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.RowSeparator.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.SelectedRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.SelectedRow.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.VertLine.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.VertLine.Options.UseFont = true;
            this.gridViewIslistesi.Appearance.ViewCaption.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.Appearance.ViewCaption.Options.UseFont = true;
            this.gridViewIslistesi.AppearancePrint.EvenRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.AppearancePrint.EvenRow.Options.UseFont = true;
            this.gridViewIslistesi.AppearancePrint.Row.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewIslistesi.AppearancePrint.Row.Options.UseFont = true;
            this.gridViewIslistesi.GridControl = this.gridControlIslistesi;
            this.gridViewIslistesi.Name = "gridViewIslistesi";
            // 
            // ArafFrmUretimBitir
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1217, 664);
            this.Controls.Add(this.gridControlIslistesi);
            this.Controls.Add(this.ribbonStatusBar);
            this.Controls.Add(this.ribbon);
            this.Name = "ArafFrmUretimBitir";
            this.Ribbon = this.ribbon;
            this.StatusBar = this.ribbonStatusBar;
            this.Text = "Üretim Bitirme Ekranı";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ArafFrmUretimBitir_FormClosed);
            this.Load += new System.EventHandler(this.ArafFrmUretimBitir_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlIslistesi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewIslistesi)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbon;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar;
        private DevExpress.XtraBars.BarButtonItem barButtonItemVardiyaDegistir;
        private DevExpress.XtraBars.BarButtonItem barButtonItemIsDegistir;
        private DevExpress.XtraBars.BarButtonItem barButtonItemIsSonlandir;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup3;
        private DevExpress.XtraGrid.GridControl gridControlIslistesi;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewIslistesi;
    }
}