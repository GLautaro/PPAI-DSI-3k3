using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace RealizacionCU22.Modelo
{
    [Table("tipo_documento")]
    public class TipoDocumento : IObjetoPersistente
    {
        [Key]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
    }
}
