using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealizacionCU22.Modelo
{
    [NotMapped]
    public class Archivo : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public string NombreArchivo { get; set; }
        public string RutaAcceso { get; set; }
    }
}
