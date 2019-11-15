using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RealizacionCU22.Modelo;
using RealizacionCU22.ModelView;

namespace RealizacionCU22
{
    public partial class mainPantallaResolucionSM : MetroFramework.Forms.MetroForm
    {

        SolicitudMantenimiento solicitudSeleccionada;
        Proyecto proyecto;
        Plan plan;
        List<Ticket> tickets;
        private ProjectContext _context;

        public mainPantallaResolucionSM()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            _context = new ProjectContext();
        }

        private void btnBuscarSM_Click(object sender, EventArgs e)
        {
            if (this.txtNumeroSM.Text == "")
            {
                MetroFramework.MetroMessageBox.Show(this, "Debe ingresar un Número de Solicitud de Mantenimiento",
                    "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning, 100);
                this.tabsResultadoBusqueda.Visible = false;
                return;
            }
            solicitudSeleccionada = _context.SolicitudesMantenimiento
                                    .Include(solicitud => solicitud.EstadoActual)
                                    .Include(solicitud => solicitud.HistorialesEstadoSM.Select(h => h.Estado))                              
                                    .Where(x => x.Id.ToString() == txtNumeroSM.Text && x.EstadoActual.Nombre=="En Ejecucion").SingleOrDefault();



            if (solicitudSeleccionada == null)
            {
                MetroFramework.MetroMessageBox.Show(this, "Solicitud de mantenimiento no encontrada",
                    "Busqueda Fallida", MessageBoxButtons.OK, MessageBoxIcon.Warning, 100);
                return;
            }
            else
            {
                MetroFramework.MetroMessageBox.Show(this, "Solicitud de mantenimiento encontrada",
                    "Busqueda Exitosa", MessageBoxButtons.OK, MessageBoxIcon.Question, 100);
                //1 2 3 4 8 10 19
                //Mapear datos a la pantalla (a los labels)
                tabsResultadoBusqueda.Visible = true;
                tabsResultadoBusqueda.SelectedTab = tabSM;

                RellenarDatosProyecto();
                RellenarDatosSM();
                RellenarDatosPlan();
            }
        }
        private void RellenarDatosProyecto()
        {
            var proyectos = _context.Proyectos.ToArray();
            foreach(Proyecto p in proyectos)
            {
                if (p.SolicitudesDeMantenimiento.Contains(solicitudSeleccionada))
                {
                    proyecto = p;
                    break;
                }
            }
            plan = solicitudSeleccionada.Plan;
            txtNombreProyecto.Text = proyecto.Nombre;
            txtNombreEmpresa.Text = proyecto.Cliente.Nombre;
            
        }
        private void RellenarDatosSM()
        {
            txtFechaNecesidad.Text = solicitudSeleccionada.FechaNecesidad.ToString();

            txtNombreAplicacion.Text = proyecto.Aplicacion.Nombre;
            txtVersionAplicacion.Text = proyecto.Aplicacion.NumeroVersion;
            txtFechaRegistro.Text = solicitudSeleccionada.FechaCreacion.ToString("dd/MM/yyyy");
            txtHoraRegistro.Text = solicitudSeleccionada.FechaCreacion.TimeOfDay.ToString();
            txtTipoSolicitud.Text = solicitudSeleccionada.Tipo.Nombre;
            txtCriticidad.Text = solicitudSeleccionada.Criticidad.Nombre;
            txtDescripcion.Text = solicitudSeleccionada.Descripcion;
        }

        private void RellenarDatosPlan()
        {
            txtFechaInicioPlan.Text = plan.FechaInicioResolucion.Date.ToString("dd/MM/yyyy");
            txtHoraInicioPlan.Text = plan.FechaInicioResolucion.TimeOfDay.ToString();
            txtFechaFinPlan.Text = plan.FechaFinResolucion.Date.ToString("dd/MM/yyyy");
            txtHoraFinPlan.Text = plan.FechaFinResolucion.TimeOfDay.ToString();
            
            tickets = plan.TrabajoARealizar.ToList();

            var ticketsView = new List<TicketViewModel>(tickets.Count);
            foreach(Ticket t in tickets)
            {
                TicketViewModel tvm = new TicketViewModel(t.Id.ToString(), t.Tarea.Nombre, t.MiembroEquipo.Nombre, t.calcularHorasConsumidas());
                ticketsView.Add(tvm);
            }
            gridTicketsPlan.DataSource = ticketsView;


        }
        private void btnResolverSM_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MetroFramework.MetroMessageBox.Show(this, "Esta seguro que desea confirmar la resolucion de la solicitud de mantenimiento", 
                "Confirmar resolución", MessageBoxButtons.YesNo, MessageBoxIcon.Information, 100);

            if (dialog == DialogResult.Yes) { 
                solicitudSeleccionada.Resolver();
                _context.SaveChanges();             
                tabsResultadoBusqueda.Visible = false;
                MetroFramework.MetroMessageBox.Show(this, "Solicitud de mantenimiento resuelta",
                    "Resolucion Exitosa", MessageBoxButtons.OK, MessageBoxIcon.Question, 100);
            }
            
        }

        private void btnDatosTicket_Click(object sender, EventArgs e)
        {
            //Pedir al gestor que devuelva los datos de los tickets seleccionados. Luego mapearlos a la tabla o a una ListView.
           
            Random rand = new Random();
            var listTkt = new List<SelectedTicketViewModel>();
            for(int i = 0; i < gridTicketsPlan.RowCount; i++)
            {
                if (gridTicketsPlan.Rows[i].Cells[0].Value == "true")
                {
                    var ticketOriginal = _context.Tickets.Find(int.Parse(gridTicketsPlan.Rows[i].Cells[1].Value.ToString()));
                    var ticket = new SelectedTicketViewModel(ticketOriginal.Id.ToString(),ticketOriginal.FechaInicioReal,ticketOriginal.FechaFinPrevista,ticketOriginal.calcularHorasConsumidas(),ticketOriginal.calcularHorasConsumidas()*ticketOriginal.ValorHoraReal,null);
                    ticket.Costo = rand.Next(1,10) * ticket.calcularHorasConsumidas();
                    ticket.HorasConsumidas = ticket.calcularHorasConsumidas();
                    listTkt.Add(ticket);
                }
            }
            if(listTkt.Count == 0)
            {
                MetroFramework.MetroMessageBox.Show(this, "Debe seleccionar al menos un ticket para buscar sus datos",
                    "Busqueda Fallida", MessageBoxButtons.OK, MessageBoxIcon.Warning, 100);
                return;
            }
            tabsResultadoBusqueda.SelectedTab = tabTickets;
            gridTicketsSeleccionados.AutoGenerateColumns = false;
            gridTicketsSeleccionados.DataSource = listTkt;

        }
    }
}
//46