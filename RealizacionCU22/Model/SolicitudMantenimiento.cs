///////////////////////////////////////////////////////////
//  SolicitudMantenimiento.cs
//  Implementation of the Class SolicitudMantenimiento
//  Generated by Enterprise Architect
//  Created on:      13-Nov-2019 17:17:47
//  Original author: Lucas
///////////////////////////////////////////////////////////
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;
using System.IO;

namespace RealizacionCU22.Modelo
{
    [Table("solicitud_mantenimiento")]
    public class SolicitudMantenimiento : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public DateTime FechaCreacion { get; set; }
        public DateTime FechaNecesidad { get; set; }
        public string Nombre { get; set; }
        public string SolucionImplementada;
        public virtual Solicitante Creador { get; set; }
        public virtual CriticidadSM Criticidad { get; set; }
        public EstadoSM EstadoActual { get; set; }
        public virtual ICollection<HistorialEstadoSM> HistorialesEstadoSM { get; set; }
        public virtual TipoSM Tipo { get; set; }
        public virtual Plan Plan { get; set; }

        [NotMapped]
        public virtual Archivo ArchivosAdjuntos { get; set; }
        [NotMapped]
        public virtual Archivo DiagramaDeGantt { get; set; }




        public SolicitudMantenimiento()
        {

        }
        public HistorialEstadoSM UltimoHistorial()
        {
            foreach(HistorialEstadoSM h in HistorialesEstadoSM)
            {
                if (h.EsPrimeroEnEjecucion())
                {
                    return h;
                }
            }
            return null;
        }

        public bool EsCerrada()
        {
            return EstadoActual.EsCerrada();
        }

        public bool EsSMEnEjecucion()
        {
            return EstadoActual.EsEnEjecucion();
        }

        public bool EstaResuelta()
        {
            return EstadoActual.EsResuelta();
        }

        public void Resolver()
        {
            EstadoActual.RegistrarResolucion(this);
        }

    }
}
//end SolicitudMantenimiento