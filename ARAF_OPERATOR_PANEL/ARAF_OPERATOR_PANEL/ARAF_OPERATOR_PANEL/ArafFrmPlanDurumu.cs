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
    public partial class ArafFrmPlanDurumu : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        Default df = new Default();
        public ArafFrmPlanDurumu()
        {
            InitializeComponent();
        }

        private void Liste()
        {
            using (ARAFEntities context = new ARAFEntities())
            {
                var Prd = from h in context.ARF_PLANNING_STATUS select h;
                if (Prd != null)
                {
                    gridControlPlanDurumu.DataSource = Prd.ToList();

                }
            }
        

        }

        private void ArafFrmPlanDurumu_Load(object sender, EventArgs e)
        {

            df.RestoreLayout(gridViewPlanDurumu, "gridViewPlanDurumu_" + this.Name);
            Liste();
        }

        private void ArafFrmPlanDurumu_FormClosed(object sender, FormClosedEventArgs e)
        {

            df.SaveLayoutToXml(gridViewPlanDurumu, "gridViewPlanDurumu_" + this.Name);
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
    }
    
   
}