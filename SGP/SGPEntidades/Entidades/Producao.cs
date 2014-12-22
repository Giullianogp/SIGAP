using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;

namespace SGPEntidades.Entidades
{
    public class Producao
    {
        public int ProducaoId { get; set; }
        public Colmeia Colmeia { get; set; }
        public decimal QuiloMel { get; set; }
        public DateTime Data { get; set; }
    }
}
