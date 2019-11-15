using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealizacionCU22.Modelo;

namespace RealizacionCU22.ModelView
{
    [NotMapped]
    class SelectedTicketViewModel : Ticket
    {
        public SelectedTicketViewModel(string id, DateTime fechaInicioReal, DateTime fechaFinPrevista, double v1, double v2, string v3)
        {
            Id = int.Parse(id);
            FechaInicioReal = fechaInicioReal;
            FechaFinPrevista = fechaFinPrevista;
            HorasEstimadas = v1;
            Costo = v2;
            Comentarios = new List<Comentario>();
        }

        public double Costo { get; set; }
        public double HorasConsumidas { get; set; }
    }
}
