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

        MetroFramework.Controls.MetroTabPage tabTicket;


        public mainPantallaResolucionSM()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            tabTicket = this.tabTickets;
        }

        private void btnBuscarSM_Click(object sender, EventArgs e)
        {
            if (this.txtNumeroSM.Text == "")
            {
                MetroFramework.MetroMessageBox.Show(this, "Debe ingresar un Número de Solicitud de Mantenimiento", 
                    "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning, 100);
                this.tabsResultadoBusqueda.Visible = false;
            }
            else
            {
                //Falta verificar que existe el num con la BD. (Solicitarle al gestor que busque)
                MetroFramework.MetroMessageBox.Show(this, "Solicitud de mantenimiento encontrada",
                    "Busqueda realizada", MessageBoxButtons.OK, MessageBoxIcon.Question, 100);
                //Mapear datos a la pantalla (a los labels)
                this.tabsResultadoBusqueda.Visible = true;
                this.tabsResultadoBusqueda.TabPages.Remove(this.tabTickets);


            }
        }

        private void btnResolverSM_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MetroFramework.MetroMessageBox.Show(this, "Esta seguro que desea confirmar la resolucion de la solicitud de mantenimiento", 
                "Confirmar resolución", MessageBoxButtons.YesNo, MessageBoxIcon.Information, 100);
            if(dialog == DialogResult.Yes){

                //Pedir al gestor que dispare los mensajes para el cambio de estado.
                this.tabsResultadoBusqueda.Visible = false;
            }
            
        }

        private void btnDatosTicket_Click(object sender, EventArgs e)
        {
            //Pedir al gestor que devuelva los datos de los tickets seleccionados. Luego mapearlos a la tabla o a una ListView.
            this.tabsResultadoBusqueda.TabPages.Insert(2, tabTicket);
            tabsResultadoBusqueda.SelectedTab = tabTickets;
        }
    }
}
