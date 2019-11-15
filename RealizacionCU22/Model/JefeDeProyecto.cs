///////////////////////////////////////////////////////////
//  JefeDeProyecto.cs
//  Implementation of the Class JefeDeProyecto
//  Generated by Enterprise Architect
//  Created on:      13-Nov-2019 19:54:57
//  Original author: Lucas
///////////////////////////////////////////////////////////
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace RealizacionCU22.Modelo
{
    [Table("jefe_proyecto")]
    public class JefeDeProyecto : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public string Apellido { get; set; }
        public string CorreoElectronico { get; set; }
        public string Nombre { get; set; }
        public virtual Usuario Usuario { get; set; }
        public virtual ICollection<Proyecto> ProyectosQueDirige { get; set; }

        public JefeDeProyecto()
        {

        }

        ~JefeDeProyecto()
        {

        }

        public virtual void Dispose()
        {

        }

        public void buscarSM()
        {

        }

        public void conocerProyectosQueLidera()
        {

        }

        public void conocerUsuario()
        {

        }

        public void esTuSM()
        {

        }

        public void mostrarApellido()
        {

        }

        public void mostrarCorreoElectrónico()
        {

        }

        public void mostrarJefeProyecto()
        {

        }

        public void mostrarNombre()
        {

        }

    }
}
//end JefeDeProyecto