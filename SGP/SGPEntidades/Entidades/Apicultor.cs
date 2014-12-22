using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace SGPEntidades.Entidades
{
    public class Apicultor
    {
        public int ApicultorId { get; set; }
        public string Nome { get; set; }
        public string Cpf { get; set; }
        public string Rg { get; set; }
        public string Registro { get; set; }
        public string Telefone { get; set; }
        public string Celular { get; set; }
        public string Endereco { get; set; }
        public string EnderecoNumero { get; set; }
        public string Uf { get; set; }
        public string Cidade { get; set; }
    }
}
