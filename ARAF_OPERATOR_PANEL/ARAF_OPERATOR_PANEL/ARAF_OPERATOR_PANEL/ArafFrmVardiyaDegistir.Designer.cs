namespace ARAF_OPERATOR_PANEL
{
    partial class ArafFrmVardiyaDegistir
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
            this.ribbon = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.barButtonItemTamam = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemKapaT = new DevExpress.XtraBars.BarButtonItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.gridControlVardiyaListesi = new DevExpress.XtraGrid.GridControl();
            this.gridViewVardiyaListesi = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlVardiyaListesi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewVardiyaListesi)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbon
            // 
            this.ribbon.ExpandCollapseItem.Id = 0;
            this.ribbon.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbon.ExpandCollapseItem,
            this.barButtonItemTamam,
            this.barButtonItemKapaT});
            this.ribbon.Location = new System.Drawing.Point(0, 0);
            this.ribbon.MaxItemId = 3;
            this.ribbon.Name = "ribbon";
            this.ribbon.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1});
            this.ribbon.ShowApplicationButton = DevExpress.Utils.DefaultBoolean.True;
            this.ribbon.ShowPageHeadersMode = DevExpress.XtraBars.Ribbon.ShowPageHeadersMode.Hide;
            this.ribbon.Size = new System.Drawing.Size(740, 147);
            this.ribbon.StatusBar = this.ribbonStatusBar;
            // 
            // barButtonItemTamam
            // 
            this.barButtonItemTamam.Caption = "Tamam";
            this.barButtonItemTamam.Id = 1;
            this.barButtonItemTamam.Name = "barButtonItemTamam";
            this.barButtonItemTamam.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemTamam_ItemClick);
            // 
            // barButtonItemKapaT
            // 
            this.barButtonItemKapaT.Caption = "Kapat";
            this.barButtonItemKapaT.Id = 2;
            this.barButtonItemKapaT.Name = "barButtonItemKapaT";
            this.barButtonItemKapaT.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemKapaT_ItemClick);
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1,
            this.ribbonPageGroup2});
            this.ribbonPage1.Name = "ribbonPage1";
            this.ribbonPage1.Text = "ribbonPage1";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.ItemLinks.Add(this.barButtonItemTamam);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.ItemLinks.Add(this.barButtonItemKapaT);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            this.ribbonPageGroup2.Text = "                          ";
            // 
            // ribbonStatusBar
            // 
            this.ribbonStatusBar.Location = new System.Drawing.Point(0, 476);
            this.ribbonStatusBar.Name = "ribbonStatusBar";
            this.ribbonStatusBar.Ribbon = this.ribbon;
            this.ribbonStatusBar.Size = new System.Drawing.Size(740, 23);
            // 
            // gridControlVardiyaListesi
            // 
            this.gridControlVardiyaListesi.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControlVardiyaListesi.Location = new System.Drawing.Point(0, 147);
            this.gridControlVardiyaListesi.MainView = this.gridViewVardiyaListesi;
            this.gridControlVardiyaListesi.MenuManager = this.ribbon;
            this.gridControlVardiyaListesi.Name = "gridControlVardiyaListesi";
            this.gridControlVardiyaListesi.Size = new System.Drawing.Size(740, 329);
            this.gridControlVardiyaListesi.TabIndex = 3;
            this.gridControlVardiyaListesi.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewVardiyaListesi});
            // 
            // gridViewVardiyaListesi
            // 
            this.gridViewVardiyaListesi.Appearance.ColumnFilterButton.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gridViewVardiyaListesi.Appearance.ColumnFilterButton.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.ColumnFilterButtonActive.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.ColumnFilterButtonActive.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.CustomizationFormHint.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.CustomizationFormHint.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.DetailTip.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.DetailTip.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.Empty.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.Empty.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.EvenRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.EvenRow.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.FilterCloseButton.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.FilterCloseButton.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.FilterPanel.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.FilterPanel.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.FixedLine.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.FixedLine.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.FocusedCell.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.FocusedCell.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.FocusedRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.FocusedRow.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.FooterPanel.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.FooterPanel.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.GroupButton.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.GroupButton.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.HeaderPanel.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.HeaderPanel.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.Row.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.Row.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.RowSeparator.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.RowSeparator.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.SelectedRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.SelectedRow.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.VertLine.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.VertLine.Options.UseFont = true;
            this.gridViewVardiyaListesi.Appearance.ViewCaption.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.Appearance.ViewCaption.Options.UseFont = true;
            this.gridViewVardiyaListesi.AppearancePrint.EvenRow.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.AppearancePrint.EvenRow.Options.UseFont = true;
            this.gridViewVardiyaListesi.AppearancePrint.Row.Font = new System.Drawing.Font("Tahoma", 14.25F);
            this.gridViewVardiyaListesi.AppearancePrint.Row.Options.UseFont = true;
            this.gridViewVardiyaListesi.GridControl = this.gridControlVardiyaListesi;
            this.gridViewVardiyaListesi.Name = "gridViewVardiyaListesi";
            // 
            // ArafFrmVardiyaDegistir
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(740, 499);
            this.Controls.Add(this.gridControlVardiyaListesi);
            this.Controls.Add(this.ribbonStatusBar);
            this.Controls.Add(this.ribbon);
            this.Name = "ArafFrmVardiyaDegistir";
            this.Ribbon = this.ribbon;
            this.StatusBar = this.ribbonStatusBar;
            this.Text = "ArafFrmVardiyaDegistir";
            this.Load += new System.EventHandler(this.ArafFrmVardiyaDegistir_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlVardiyaListesi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewVardiyaListesi)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbon;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar;
        private DevExpress.XtraBars.BarButtonItem barButtonItemTamam;
        private DevExpress.XtraBars.BarButtonItem barButtonItemKapaT;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
        private DevExpress.XtraGrid.GridControl gridControlVardiyaListesi;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewVardiyaListesi;
    }
}