///////////////////////////////////////////////////////////
//  Sesion.cs
//  Implementation of the Class Sesion
//  Generated by Enterprise Architect
//  Created on:      13-Nov-2019 19:55:17
//  Original author: Lucas
///////////////////////////////////////////////////////////
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RealizacionCU22.Modelo
{
    [Table("sesion")]
    public class Sesion : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public DateTime FechaHoraFin { get; set; }
        public DateTime FechaHoraInicio { get; set; }
        public virtual Usuario Usuario { get; set; }

        public Sesion()
        {

        }

        ~Sesion()
        {

        }

        public virtual void Dispose()
        {

        }

        public void cerrar()
        {

        }

        public void conocerUsuario()
        {

        }

        public void mostrarSesion()
        {

        }

        public void obtenerCorreoElectr�nicoInstitucionalUsuarioSolicitante()
        {

        }

        public void obtenerNombreUsuario()
        {

        }

        public void obtenerProyectoSeleccionado()
        {

        }

        public void obtenerUsuario()
        {

        }

    }
}
//end Sesion