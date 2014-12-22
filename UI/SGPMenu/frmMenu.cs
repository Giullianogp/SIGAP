using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SGPColmeia.UsrControls;
using SGPUsuario.Forms;
using SGPUsuario.UserControls;

namespace SGPMenu
{
    public partial class frmMenu : Form
    {
        public frmMenu()
        {
            InitializeComponent();
        }

        #region NavBar
        private void niUsuarios_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            var usuario = new usrConsultaUsuarios(); { Dock = DockStyle.Fill; };
            tabControl.TabPages.Add("Consulta de Usuários").Controls.Add(usuario);
        }

        private bool ValidaUsrControl(UserControl usr)
        {
            return true;
        }
        #endregion

        private void tabControl_CloseButtonClick(object sender, EventArgs e)
        {
            tabControl.TabPages.Remove(tabControl.SelectedTabPage);
        }

        private void nbiApiario_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            var apiario = new usrConsultaApiario(); { Dock = DockStyle.Fill; };
            tabControl.TabPages.Add("Consulta de Usuários").Controls.Add(apiario);
        }


    }
}
