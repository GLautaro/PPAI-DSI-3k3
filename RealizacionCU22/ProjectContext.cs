using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using RealizacionCU22.Modelo;

namespace RealizacionCU22
{
    public class ProjectContext : DbContext
    {
        public ProjectContext() : base("local_mok")
        {

        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            
        }
        public DbSet<Aplicacion>  Aplicaciones { get; set; }
        public DbSet<Cliente>  Clientes { get; set; }
        public DbSet<Comentario> Comentarios { get; set; }
        public DbSet<CriticidadSM>  CriticidadesSM { get; set; }
        public DbSet<EstadoSM> EstadosSM { get; set; }
        public DbSet<EstadoTicket> EstadosTicket { get; set; }
        public DbSet<HistorialEstadoSM> HistorialesEstadoSM { get; set; }
        public DbSet<HistorialEstadoTicket> HistorialesEstadoTicket { get; set; }
        public DbSet<JefeDeProyecto> JefesDeProyecto { get; set; }
        public DbSet<LiderProyecto> LideresProyecto { get; set; }
        public DbSet<MiembroEquipo> MiembrosEquipo { get; set; }
        public DbSet<Plan> Planes { get; set; }
        public DbSet<Proyecto> Proyectos { get; set; }
        public DbSet<Rol> Roles { get; set; }
        public DbSet<Sesion> Sesiones { get; set; }
        public DbSet<Solicitante> Solicitantes { get; set; }
        public DbSet<SolicitudMantenimiento> SolicitudesMantenimiento { get; set; }
        public DbSet<Tarea> Tareas { get; set; }
        public DbSet<Ticket> Tickets { get; set; }
        public DbSet<TipoDocumento> TiposDocumento { get; set; }
        public DbSet<TipoSM> TiposSM { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Version> Versiones { get; set; }
    }
}
