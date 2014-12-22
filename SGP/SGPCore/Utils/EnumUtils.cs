using System;
using System.ComponentModel;
using System.Linq;
using System.Reflection;

namespace SGPCore.Utils
{

    public class EnumDescription : DescriptionAttribute
    {

        public EnumDescription(string description)
            : base(description)
        {
        }
    }

    public class EnumValue : Attribute
    {
        //!!!Valor para gravar no banco!!!

        public object Value { get; set; }

        public EnumValue(object value)
        {
            Value = value;
        }
    }

    public class EnumUtils<T>
    {
        public static string GetDescription(T enumValue, string defaultDesc)
        {
            FieldInfo fi = enumValue.GetType().GetField(enumValue.ToString());

            if (null != fi)
            {
                object[] attrs = fi.GetCustomAttributes
                        (typeof(EnumDescription), true);
                if (attrs.Length > 0)
                    return ((EnumDescription)attrs[0]).Description;
            }

            return defaultDesc;
        }

        public static string GetDescription(T enumValue)
        {
            return GetDescription(enumValue, string.Empty);
        }

        public static T FromDescription(string description)
        {
            Type t = typeof(T);
            foreach (FieldInfo fi in t.GetFields())
            {
                object[] attrs = fi.GetCustomAttributes
                        (typeof(EnumDescription), true);
                if (attrs.Length > 0)
                {
                    if (attrs.Cast<EnumDescription>().Any(attr => attr.Description.Equals(description)))
                    {
                        return (T)fi.GetValue(null);
                    }
                }
            }
            return default(T);
        }

        public static X GetValue<X>(T enumValue, X defaultValue)
        {
            FieldInfo fi = enumValue.GetType().GetField(enumValue.ToString());

            if (null != fi)
            {
                object[] attrs = fi.GetCustomAttributes(typeof(EnumValue), true);
                if (attrs.Length > 0)
                    return (X)((EnumValue)attrs[0]).Value;
            }

            return defaultValue;
        }

        public static X GetValue<X>(T enumValue)
        {
            return GetValue(enumValue, default(X));
        }

        public static T FromValue<X>(X value)
        {
            Type t = typeof(T);
            foreach (FieldInfo fi in t.GetFields())
            {
                object[] attrs = fi.GetCustomAttributes(typeof(EnumValue), true);
                if (attrs.Length > 0)
                {
                    if (attrs.Cast<EnumValue>().Any(attr => attr.Value.Equals(value.ToString())))
                    {
                        return (T)fi.GetValue(null);
                    }
                }

            }
            throw new Exception(String.Format("Valor fora do domínio do enumerado. Enumerado = {0}", t.FullName));
        }
    }

    public class Formato : Attribute
    {
        public string formato;
        public string Cultura;

        public Formato(string formatoInf, string culturaInf)
        {
            formato = formatoInf;
            Cultura = culturaInf;
        }
    }

    public class Obrigatorio : Attribute
    {
        public bool PropriedadeObrigatoria;

        public Obrigatorio()
        {
            PropriedadeObrigatoria = true;
        }
    }


}
