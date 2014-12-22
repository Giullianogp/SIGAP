using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.Utils.About;
using SGPApiario.Forms;

namespace SGPColmeia.UsrControls
{
    public partial class usrConsultaApiario : UserControl
    {
        public usrConsultaApiario()
        {
            InitializeComponent();
        }

        private void btConsultar_Click(object sender, EventArgs e)
        {

        }

        private void btAdicionar_Click(object sender, EventArgs e)
        {
            var novo = new frmDetalheApiario();
            novo.Show();
        }

        private void btEditar_Click(object sender, EventArgs e)
        {

        }

        private void btRemover_Click(object sender, EventArgs e)
        {

        }
    }
}
