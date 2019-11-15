using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealizacionCU22.ModelView
{
    [NotMapped]
    class TicketViewModel
    {


        public TicketViewModel(string id, string nombre1, string nombre2, double v)
        {
            Id = id;
            Tarea = nombre1;
            MiembroAsignado = nombre2;
            HorasConsumidas = v;
        }

        public string Id { get; set; }
        public string Tarea { get; set; }
        public string MiembroAsignado { get; set; }
        public double HorasConsumidas { get; set; }
    }
}
