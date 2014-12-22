using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using SGPEntidades.Enum;

namespace SGPEntidades.Entidades
{
    public class Apiario
    {
        public int ApiarioId { get; set; }
        public string Nome { get; set; }
        public string Local { get; set; }
        public TipoFloracao Floracao { get; set; }
        public List<Colmeia> Colmeias { get; set; }
    }
}
