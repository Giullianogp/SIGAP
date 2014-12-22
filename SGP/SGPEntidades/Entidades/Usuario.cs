using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SGPEntidades.Enum;

namespace SGPEntidades.Entidades
{
    public class Usuario
    {
        public int? IdUsuario { get; set; }
        public string Nome { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public TipoUsuario Tipo { get; set; }
        public Status Status { get; set; }
    }
}
