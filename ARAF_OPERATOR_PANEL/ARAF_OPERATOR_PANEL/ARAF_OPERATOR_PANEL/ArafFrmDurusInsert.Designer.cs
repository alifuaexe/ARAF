namespace ARAF_OPERATOR_PANEL
{
    partial class ArafFrmDurusInsert
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ArafFrmDurusInsert));
            this.ribbon = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemDuruslar = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemKapat = new DevExpress.XtraBars.BarButtonItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.panel1 = new System.Windows.Forms.Panel();
            this.WorkStationPanel = new DevExpress.XtraBars.Docking2010.WindowsUIButtonPanel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.textEditAciklama = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.textEditDurus_Adi = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEditAciklama.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEditDurus_Adi.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbon
            // 
            this.ribbon.ExpandCollapseItem.Id = 0;
            this.ribbon.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbon.ExpandCollapseItem,
            this.barButtonItem1,
            this.barButtonItemDuruslar,
            this.barButtonItemKapat});
            this.ribbon.Location = new System.Drawing.Point(0, 0);
            this.ribbon.MaxItemId = 4;
            this.ribbon.Name = "ribbon";
            this.ribbon.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1});
            this.ribbon.Size = new System.Drawing.Size(834, 147);
            this.ribbon.StatusBar = this.ribbonStatusBar;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "barButtonItem1";
            this.barButtonItem1.Id = 1;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // barButtonItemDuruslar
            // 
            this.barButtonItemDuruslar.Caption = "Duruş Listesi";
            this.barButtonItemDuruslar.Glyph = ((System.Drawing.Image)(resources.GetObject("barButtonItemDuruslar.Glyph")));
            this.barButtonItemDuruslar.Id = 2;
            this.barButtonItemDuruslar.ItemAppearance.Disabled.Font = new System.Drawing.Font("Tahoma", 24F);
            this.barButtonItemDuruslar.ItemAppearance.Disabled.Options.UseFont = true;
            this.barButtonItemDuruslar.ItemAppearance.Hovered.Font = new System.Drawing.Font("Tahoma", 24F);
            this.barButtonItemDuruslar.ItemAppearance.Hovered.Options.UseFont = true;
            this.barButtonItemDuruslar.ItemAppearance.Normal.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.barButtonItemDuruslar.ItemAppearance.Normal.Options.UseFont = true;
            this.barButtonItemDuruslar.ItemAppearance.Pressed.Font = new System.Drawing.Font("Tahoma", 24F);
            this.barButtonItemDuruslar.ItemAppearance.Pressed.Options.UseFont = true;
            this.barButtonItemDuruslar.ItemInMenuAppearance.Disabled.Font = new System.Drawing.Font("Tahoma", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.barButtonItemDuruslar.ItemInMenuAppearance.Disabled.Options.UseFont = true;
            this.barButtonItemDuruslar.ItemInMenuAppearance.Hovered.Font = new System.Drawing.Font("Tahoma", 24F);
            this.barButtonItemDuruslar.ItemInMenuAppearance.Hovered.Options.UseFont = true;
            this.barButtonItemDuruslar.ItemInMenuAppearance.Normal.Font = new System.Drawing.Font("Tahoma", 24F);
            this.barButtonItemDuruslar.ItemInMenuAppearance.Normal.Options.UseFont = true;
            this.barButtonItemDuruslar.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("barButtonItemDuruslar.LargeGlyph")));
            this.barButtonItemDuruslar.Name = "barButtonItemDuruslar";
            this.barButtonItemDuruslar.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            // 
            // barButtonItemKapat
            // 
            this.barButtonItemKapat.Caption = "Kapat";
            this.barButtonItemKapat.Glyph = ((System.Drawing.Image)(resources.GetObject("barButtonItemKapat.Glyph")));
            this.barButtonItemKapat.Id = 3;
            this.barButtonItemKapat.ItemAppearance.Normal.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.barButtonItemKapat.ItemAppearance.Normal.Options.UseFont = true;
            this.barButtonItemKapat.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("barButtonItemKapat.LargeGlyph")));
            this.barButtonItemKapat.Name = "barButtonItemKapat";
            this.barButtonItemKapat.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large;
            this.barButtonItemKapat.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemKapat_ItemClick);
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1,
            this.ribbonPageGroup2});
            this.ribbonPage1.Name = "ribbonPage1";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.Glyph = ((System.Drawing.Image)(resources.GetObject("ribbonPageGroup1.Glyph")));
            this.ribbonPageGroup1.ItemLinks.Add(this.barButtonItemDuruslar, true);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.ItemLinks.Add(this.barButtonItemKapat);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            // 
            // ribbonStatusBar
            // 
            this.ribbonStatusBar.Location = new System.Drawing.Point(0, 705);
            this.ribbonStatusBar.Name = "ribbonStatusBar";
            this.ribbonStatusBar.Ribbon = this.ribbon;
            this.ribbonStatusBar.Size = new System.Drawing.Size(834, 23);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.WorkStationPanel);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 147);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(333, 558);
            this.panel1.TabIndex = 2;
            // 
            // WorkStationPanel
            // 
            this.WorkStationPanel.Buttons.AddRange(new DevExpress.XtraEditors.ButtonPanel.IBaseButton[] {
            new DevExpress.XtraBars.Docking2010.WindowsUIButton("Button", "", DevExpress.XtraBars.Docking2010.ImageLocation.Default, DevExpress.XtraBars.Docking2010.ButtonStyle.CheckButton, "", true, -1, true, null, true, false, true, null, ((short)(0)), 1, false, false),
            new DevExpress.XtraBars.Docking2010.WindowsUIButton()});
            this.WorkStationPanel.Location = new System.Drawing.Point(0, 0);
            this.WorkStationPanel.Name = "WorkStationPanel";
            this.WorkStationPanel.Size = new System.Drawing.Size(331, 576);
            this.WorkStationPanel.TabIndex = 4;
            this.WorkStationPanel.Text = "windowsUIButtonPanel1";
            this.WorkStationPanel.ButtonClick += new DevExpress.XtraBars.Docking2010.ButtonEventHandler(this.WorkStationPanel_ButtonClick);
            // 
            // panel2
            // 
            this.panel2.AutoSize = true;
            this.panel2.Controls.Add(this.tableLayoutPanel1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(333, 147);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(501, 558);
            this.panel2.TabIndex = 3;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Controls.Add(this.textEditAciklama, 0, 3);
            this.tableLayoutPanel1.Controls.Add(this.labelControl2, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.textEditDurus_Adi, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.labelControl1, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.simpleButton1, 0, 4);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(6, 6);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 5;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 83F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(473, 312);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // textEditAciklama
            // 
            this.textEditAciklama.Dock = System.Windows.Forms.DockStyle.Fill;
            this.textEditAciklama.Location = new System.Drawing.Point(3, 174);
            this.textEditAciklama.MenuManager = this.ribbon;
            this.textEditAciklama.Name = "textEditAciklama";
            this.textEditAciklama.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textEditAciklama.Properties.Appearance.Options.UseFont = true;
            this.textEditAciklama.Size = new System.Drawing.Size(467, 46);
            this.textEditAciklama.TabIndex = 4;
            // 
            // labelControl2
            // 
            this.labelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelControl2.Location = new System.Drawing.Point(3, 117);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(467, 51);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "AÇIKLAMA";
            // 
            // textEditDurus_Adi
            // 
            this.textEditDurus_Adi.Dock = System.Windows.Forms.DockStyle.Fill;
            this.textEditDurus_Adi.Location = new System.Drawing.Point(3, 60);
            this.textEditDurus_Adi.MenuManager = this.ribbon;
            this.textEditDurus_Adi.Name = "textEditDurus_Adi";
            this.textEditDurus_Adi.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textEditDurus_Adi.Properties.Appearance.Options.UseFont = true;
            this.textEditDurus_Adi.Size = new System.Drawing.Size(467, 46);
            this.textEditDurus_Adi.TabIndex = 2;
            // 
            // labelControl1
            // 
            this.labelControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelControl1.Location = new System.Drawing.Point(3, 3);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(467, 51);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "DURUS ADI";
            this.labelControl1.Click += new System.EventHandler(this.labelControl1_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Tahoma", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.AutoSize = true;
            this.simpleButton1.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Office2003;
            this.simpleButton1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.simpleButton1.ImageLocation = DevExpress.XtraEditors.ImageLocation.TopCenter;
            this.simpleButton1.Location = new System.Drawing.Point(3, 231);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(467, 78);
            this.simpleButton1.TabIndex = 5;
            this.simpleButton1.Text = "Başlat";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // ArafFrmDurusInsert
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(834, 728);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.ribbonStatusBar);
            this.Controls.Add(this.ribbon);
            this.Name = "ArafFrmDurusInsert";
            this.Ribbon = this.ribbon;
            this.StatusBar = this.ribbonStatusBar;
            this.Text = "Duruş Giriş Ekranı";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ArafFrmDurusInsert_FormClosed);
            this.Load += new System.EventHandler(this.ArafFrmDurusInsert_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEditAciklama.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEditDurus_Adi.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbon;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraBars.Docking2010.WindowsUIButtonPanel WorkStationPanel;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private DevExpress.XtraEditors.TextEdit textEditAciklama;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit textEditDurus_Adi;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItemDuruslar;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraBars.BarButtonItem barButtonItemKapat;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
    }
}