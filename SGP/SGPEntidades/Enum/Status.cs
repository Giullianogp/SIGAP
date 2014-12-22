using SGPCore.Utils;

namespace SGPEntidades.Enum
{
    public enum Status
    {
        [EnumDescription("Ativo")]
        [EnumValue("A")]
        Ativo,

        [EnumDescription("Inativo")]
        [EnumValue("I")]
        Inativo,

        [EnumDescription("Não Informado")]
        [EnumValue("")]
        NaoInformado,

    }
}