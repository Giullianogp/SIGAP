namespace SGPMenu
{
    partial class frmMenu
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
            this.lControl = new DevExpress.XtraLayout.LayoutControl();
            this.tabControl = new DevExpress.XtraTab.XtraTabControl();
            this.navBarControl1 = new DevExpress.XtraNavBar.NavBarControl();
            this.bgMenu = new DevExpress.XtraNavBar.NavBarGroup();
            this.bgConfig = new DevExpress.XtraNavBar.NavBarGroup();
            this.niUsuarios = new DevExpress.XtraNavBar.NavBarItem();
            this.lCGroup1 = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlGroup1 = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            this.nbiApiario = new DevExpress.XtraNavBar.NavBarItem();
            ((System.ComponentModel.ISupportInitialize)(this.lControl)).BeginInit();
            this.lControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tabControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.navBarControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lCGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            this.SuspendLayout();
            // 
            // lControl
            // 
            this.lControl.Controls.Add(this.tabControl);
            this.lControl.Controls.Add(this.navBarControl1);
            this.lControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lControl.Location = new System.Drawing.Point(0, 0);
            this.lControl.Name = "lControl";
            this.lControl.OptionsCustomizationForm.DesignTimeCustomizationFormPositionAndSize = new System.Drawing.Rectangle(591, 209, 250, 350);
            this.lControl.Root = this.lCGroup1;
            this.lControl.Size = new System.Drawing.Size(775, 407);
            this.lControl.TabIndex = 0;
            this.lControl.Text = "layoutControl1";
            // 
            // tabControl
            // 
            this.tabControl.Appearance.BackColor = System.Drawing.Color.LightGray;
            this.tabControl.Appearance.ForeColor = System.Drawing.Color.Transparent;
            this.tabControl.Appearance.Options.UseBackColor = true;
            this.tabControl.Appearance.Options.UseForeColor = true;
            this.tabControl.ClosePageButtonShowMode = DevExpress.XtraTab.ClosePageButtonShowMode.InAllTabPageHeaders;
            this.tabControl.Location = new System.Drawing.Point(148, 10);
            this.tabControl.Name = "tabControl";
            this.tabControl.Size = new System.Drawing.Size(620, 389);
            this.tabControl.TabIndex = 5;
            this.tabControl.CloseButtonClick += new System.EventHandler(this.tabControl_CloseButtonClick);
            // 
            // navBarControl1
            // 
            this.navBarControl1.ActiveGroup = this.bgMenu;
            this.navBarControl1.Groups.AddRange(new DevExpress.XtraNavBar.NavBarGroup[] {
            this.bgMenu,
            this.bgConfig});
            this.navBarControl1.Items.AddRange(new DevExpress.XtraNavBar.NavBarItem[] {
            this.niUsuarios,
            this.nbiApiario});
            this.navBarControl1.Location = new System.Drawing.Point(9, 9);
            this.navBarControl1.Name = "navBarControl1";
            this.navBarControl1.OptionsNavPane.ExpandedWidth = 136;
            this.navBarControl1.Size = new System.Drawing.Size(136, 389);
            this.navBarControl1.TabIndex = 4;
            this.navBarControl1.Text = "navBarControl1";
            this.navBarControl1.View = new DevExpress.XtraNavBar.ViewInfo.StandardSkinExplorerBarViewInfoRegistrator("VS2010");
            // 
            // bgMenu
            // 
            this.bgMenu.Caption = "Menu";
            this.bgMenu.Expanded = true;
            this.bgMenu.ItemLinks.AddRange(new DevExpress.XtraNavBar.NavBarItemLink[] {
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiApiario)});
            this.bgMenu.Name = "bgMenu";
            // 
            // bgConfig
            // 
            this.bgConfig.Caption = "Configurações";
            this.bgConfig.Expanded = true;
            this.bgConfig.ItemLinks.AddRange(new DevExpress.XtraNavBar.NavBarItemLink[] {
            new DevExpress.XtraNavBar.NavBarItemLink(this.niUsuarios)});
            this.bgConfig.Name = "bgConfig";
            // 
            // niUsuarios
            // 
            this.niUsuarios.Caption = "Usuários";
            this.niUsuarios.Name = "niUsuarios";
            this.niUsuarios.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.niUsuarios_LinkClicked);
            // 
            // lCGroup1
            // 
            this.lCGroup1.CustomizationFormText = "lCGroup1";
            this.lCGroup1.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.lCGroup1.GroupBordersVisible = false;
            this.lCGroup1.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlGroup1});
            this.lCGroup1.Location = new System.Drawing.Point(0, 0);
            this.lCGroup1.Name = "lCGroup1";
            this.lCGroup1.Padding = new DevExpress.XtraLayout.Utils.Padding(2, 2, 2, 2);
            this.lCGroup1.Size = new System.Drawing.Size(775, 407);
            this.lCGroup1.Text = "lCGroup1";
            this.lCGroup1.TextVisible = false;
            // 
            // layoutControlGroup1
            // 
            this.layoutControlGroup1.CustomizationFormText = "layoutControlGroup1";
            this.layoutControlGroup1.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem1,
            this.layoutControlItem2});
            this.layoutControlGroup1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlGroup1.Name = "layoutControlGroup1";
            this.layoutControlGroup1.Padding = new DevExpress.XtraLayout.Utils.Padding(2, 2, 2, 2);
            this.layoutControlGroup1.Size = new System.Drawing.Size(771, 403);
            this.layoutControlGroup1.Text = "layoutControlGroup1";
            this.layoutControlGroup1.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.Control = this.navBarControl1;
            this.layoutControlItem1.CustomizationFormText = "layoutControlItem1";
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.MaxSize = new System.Drawing.Size(140, 0);
            this.layoutControlItem1.MinSize = new System.Drawing.Size(140, 14);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(140, 393);
            this.layoutControlItem1.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem1.Text = "layoutControlItem1";
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextToControlDistance = 0;
            this.layoutControlItem1.TextVisible = false;
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.Control = this.tabControl;
            this.layoutControlItem2.CustomizationFormText = "layoutControlItem2";
            this.layoutControlItem2.Location = new System.Drawing.Point(140, 0);
            this.layoutControlItem2.MinSize = new System.Drawing.Size(102, 22);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Padding = new DevExpress.XtraLayout.Utils.Padding(1, 0, 3, 1);
            this.layoutControlItem2.Size = new System.Drawing.Size(621, 393);
            this.layoutControlItem2.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem2.Text = "layoutControlItem2";
            this.layoutControlItem2.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem2.TextToControlDistance = 0;
            this.layoutControlItem2.TextVisible = false;
            // 
            // nbiApiario
            // 
            this.nbiApiario.Caption = "Apiários";
            this.nbiApiario.Name = "nbiApiario";
            this.nbiApiario.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiApiario_LinkClicked);
            // 
            // frmMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(775, 407);
            this.Controls.Add(this.lControl);
            this.Name = "frmMenu";
            this.Text = "SIGAP - Sistema Gerenciador de Apiário";
            ((System.ComponentModel.ISupportInitialize)(this.lControl)).EndInit();
            this.lControl.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.tabControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.navBarControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lCGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraLayout.LayoutControl lControl;
        private DevExpress.XtraLayout.LayoutControlGroup lCGroup1;
        private DevExpress.XtraTab.XtraTabControl tabControl;
        private DevExpress.XtraNavBar.NavBarControl navBarControl1;
        private DevExpress.XtraNavBar.NavBarGroup bgMenu;
        private DevExpress.XtraLayout.LayoutControlGroup layoutControlGroup1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
        private DevExpress.XtraNavBar.NavBarGroup bgConfig;
        private DevExpress.XtraNavBar.NavBarItem niUsuarios;
        private DevExpress.XtraNavBar.NavBarItem nbiApiario;
    }
}

