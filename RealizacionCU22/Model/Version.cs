///////////////////////////////////////////////////////////
//  Version.cs
//  Implementation of the Class Version
//  Generated by Enterprise Architect
//  Created on:      13-Nov-2019 19:55:36
//  Original author: Lucas
///////////////////////////////////////////////////////////
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace RealizacionCU22.Modelo
{
    [Table("version")]
    public class Version : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public DateTime FechaLiberacion { get; set; }
        public string Nombre { get; set; }
        public string NumeroVersion { get; set; }

        public virtual Aplicacion Aplicacion { get; set; }

        public Version()
        {

        }

        ~Version()
        {

        }

        public virtual void Dispose()
        {

        }

        public void mostrarAplicacion()
        {

        }

        public void mostrarNombre()
        {

        }

        public void mostrarVersion()
        {

        }

        public void obtenerNombreAplicaci�n()
        {

        }

        public void obtenerVersionYApp()
        {

        }

    }
}
//end Version