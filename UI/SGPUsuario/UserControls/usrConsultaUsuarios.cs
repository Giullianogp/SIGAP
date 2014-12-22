using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SGPUsuario.Forms;

namespace SGPUsuario.UserControls
{
    public partial class usrConsultaUsuarios : UserControl
    {
        public usrConsultaUsuarios()
        {
            InitializeComponent();
        }

        private void btAdicionar_Click(object sender, EventArgs e)
        {
            var add = new frmDetalheUsuario();
            add.ShowDialog();
        }

        private void btConsultar_Click(object sender, EventArgs e)
        {
            
        }
    }
}
