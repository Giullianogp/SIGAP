using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SGPEntidades.Entidades
{
    public class Colmeia
    {
        public int ColmeiaId { get; set; }
        public string Identificador { get; set; }
        public string TipoNinho { get; set; }
        public int? Quadros { get; set; }
        public int? Melgueiras { get; set; }
        public int? SobreNinhos { get; set; }
    }
}
