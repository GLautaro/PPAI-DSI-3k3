///////////////////////////////////////////////////////////
//  CriticidadSM.cs
//  Implementation of the Class CriticidadSM
//  Generated by Enterprise Architect
//  Created on:      13-Nov-2019 18:32:55
//  Original author: Lucas
///////////////////////////////////////////////////////////
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RealizacionCU22.Modelo
{
    [Table("criticidad_solicitud_mantenimiento")]
    public class CriticidadSM : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public string Nombre { get; set; }

        public CriticidadSM()
        {

        }
    }
}

//end CriticidadSM