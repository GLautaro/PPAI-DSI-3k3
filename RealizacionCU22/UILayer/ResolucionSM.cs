using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RealizacionCU22
{
    public partial class mainPantallaResolucionSM : MetroFramework.Forms.MetroForm
    {
        public mainPantallaResolucionSM()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnBuscarSM_Click(object sender, EventArgs e)
        {
            if (this.txtNumeroSM.Text == "")
            {
                MetroFramework.MetroMessageBox.Show(this, "Debe ingresar un Número de Solicitud de Mantenimiento", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning, 100);
                this.tabsResultadoBusqueda.Visible = false;
            }
            else
            {
                //Falta verificar que existe el num con la BD. (Solicitarle al gestor que busque)
                MetroFramework.MetroMessageBox.Show(this, "Solicitud de mantenimiento encontrada", "Busqueda realizada", MessageBoxButtons.OK, MessageBoxIcon.Information, 100);
                this.tabsResultadoBusqueda.Visible = true;
            }
        }
    }
}
