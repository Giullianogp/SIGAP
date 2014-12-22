using System.Data.SqlClient;
using SGPCore.Utils;
using SGPEntidades.Entidades;
using SGPEntidades.Enum;

namespace SGPRepositorio.Creator
{
    public class UsuarioCreator : BaseCreator
    {
        public UsuarioCreator(SqlDataReader reader, string alias, params object[] include)
            : base(reader, alias, include) { }

        public Usuario Create()
        {
            if (dr == null)
                return null;

            var usr = new Usuario
            {
                IdUsuario = dr.FieldExist(string.Concat(name, "IdUsuario")) ? dr[string.Concat(name, "IdUsuario")].DefaultDbNull<int?>(null) : null,
                Nome = dr.FieldExist(string.Concat(name, "Nome")) ? dr[string.Concat(name, "Nome")].DefaultDbNull<string>(null) : string.Empty,
                Login = dr.FieldExist(string.Concat(name, "Login")) ? dr[string.Concat(name, "Login")].DefaultDbNull<string>(null) : string.Empty,
                Senha = dr.FieldExist(string.Concat(name, "Senha")) ? dr[string.Concat(name, "Senha")].DefaultDbNull<string>(null) : string.Empty,
                Status = dr.FieldExist(string.Concat(name, "Status")) ? EnumUtils<Status>.FromValue(dr[string.Concat(name, "Status")].DefaultDbNull<string>(null)) : Status.NaoInformado,
                Tipo = dr.FieldExist(string.Concat(name, "Tipo")) ? EnumUtils<TipoUsuario>.FromValue(dr[string.Concat(name, "Tipo")].DefaultDbNull<string>(null)) : TipoUsuario.Usuario,
            };

            return usr;
        }

    }
}