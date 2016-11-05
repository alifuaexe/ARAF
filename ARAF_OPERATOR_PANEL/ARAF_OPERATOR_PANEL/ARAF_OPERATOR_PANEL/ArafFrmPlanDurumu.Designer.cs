namespace ARAF_OPERATOR_PANEL
{
    partial class ArafFrmPlanDurumu
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
            this.ribbonStatusBar = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.gridControlPlanDurumu = new DevExpress.XtraGrid.GridControl();
            this.gridViewPlanDurumu = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlPlanDurumu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewPlanDurumu)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbon
            // 
            this.ribbon.ExpandCollapseItem.Id = 0;
            this.ribbon.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbon.ExpandCollapseItem,
            this.barButtonItemTamam});
            this.ribbon.Location = new System.Drawing.Point(0, 0);
            this.ribbon.MaxItemId = 2;
            this.ribbon.Name = "ribbon";
            this.ribbon.Size = new System.Drawing.Size(1589, 54);
            this.ribbon.StatusBar = this.ribbonStatusBar;
            // 
            // barButtonItemTamam
            // 
            this.barButtonItemTamam.Caption = "Tamam";
            this.barButtonItemTamam.Id = 1;
            this.barButtonItemTamam.Name = "barButtonItemTamam";
            // 
            // ribbonStatusBar
            // 
            this.ribbonStatusBar.Location = new System.Drawing.Point(0, 650);
            this.ribbonStatusBar.Name = "ribbonStatusBar";
            this.ribbonStatusBar.Ribbon = this.ribbon;
            this.ribbonStatusBar.Size = new System.Drawing.Size(1589, 23);
            // 
            // gridControlPlanDurumu
            // 
            this.gridControlPlanDurumu.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControlPlanDurumu.Font = new System.Drawing.Font("Tahoma", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gridControlPlanDurumu.Location = new System.Drawing.Point(0, 54);
            this.gridControlPlanDurumu.MainView = this.gridViewPlanDurumu;
            this.gridControlPlanDurumu.Name = "gridControlPlanDurumu";
            this.gridControlPlanDurumu.Size = new System.Drawing.Size(1589, 596);
            this.gridControlPlanDurumu.TabIndex = 10;
            this.gridControlPlanDurumu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewPlanDurumu});
            // 
            // gridViewPlanDurumu
            // 
            this.gridViewPlanDurumu.Appearance.ColumnFilterButton.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.ColumnFilterButton.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.ColumnFilterButtonActive.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.ColumnFilterButtonActive.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.CustomizationFormHint.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.CustomizationFormHint.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.DetailTip.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.DetailTip.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.Empty.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.Empty.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.EvenRow.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.EvenRow.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.FilterCloseButton.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Bold);
            this.gridViewPlanDurumu.Appearance.FilterCloseButton.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.GroupRow.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gridViewPlanDurumu.Appearance.GroupRow.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.HeaderPanel.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gridViewPlanDurumu.Appearance.HeaderPanel.Options.UseFont = true;
            this.gridViewPlanDurumu.Appearance.Row.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gridViewPlanDurumu.Appearance.Row.Options.UseFont = true;
            this.gridViewPlanDurumu.GridControl = this.gridControlPlanDurumu;
            this.gridViewPlanDurumu.Name = "gridViewPlanDurumu";
            this.gridViewPlanDurumu.OptionsBehavior.Editable = false;
            this.gridViewPlanDurumu.OptionsView.ShowGroupPanel = false;
            // 
            // ArafFrmPlanDurumu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1589, 673);
            this.Controls.Add(this.gridControlPlanDurumu);
            this.Controls.Add(this.ribbonStatusBar);
            this.Controls.Add(this.ribbon);
            this.IsMdiContainer = true;
            this.Name = "ArafFrmPlanDurumu";
            this.Ribbon = this.ribbon;
            this.StatusBar = this.ribbonStatusBar;
            this.Text = "RibbonForm1";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ArafFrmPlanDurumu_FormClosed);
            this.Load += new System.EventHandler(this.ArafFrmPlanDurumu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlPlanDurumu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewPlanDurumu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbon;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar;
        private DevExpress.XtraBars.BarButtonItem barButtonItemTamam;
        private DevExpress.XtraGrid.GridControl gridControlPlanDurumu;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewPlanDurumu;
    }
}