using SGPCore.Utils;

namespace SGPEntidades.Enum
{
    public enum TipoUsuario
    {
        [EnumDescription("Administrador")]
        [EnumValue("A")]
        Administrador,

        [EnumDescription("Usúario")]
        [EnumValue("U")]
        Usuario,
    }
}