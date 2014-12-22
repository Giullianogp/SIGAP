using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace SGPCore.Utils
{
    public static class ExtensionMethods
    {
        public static bool FieldExist(this IDataReader reader, string fieldName)
        {
            var schemaTable = reader.GetSchemaTable();
            if (schemaTable != null)
                schemaTable.DefaultView.RowFilter = string.Format("ColumnName= '{0}'", fieldName);
            var dataTable = reader.GetSchemaTable();
            return dataTable != null && dataTable.DefaultView.Count > 0;
        }

        public static T DefaultDbNull<T>(this Object value, object defaultValue)
        {
            var t = typeof(T);
            var u = Nullable.GetUnderlyingType(t);

            if (u != null)
            {
                if (value == Convert.DBNull)
                {
                    return (T)defaultValue;
                }
                return (T)Convert.ChangeType(value, u);
            }
            else
            {
                if (value == Convert.DBNull)
                {
                    return (T)Convert.ChangeType(defaultValue, typeof(T));
                }
                return (T)Convert.ChangeType(value, t);
            }
        }

        public static void ConvertToDbNull(this SqlParameterCollection value)
        {
            foreach (SqlParameter Parameter in value)
            {
                if (Parameter.Value == null)
                {
                    Parameter.Value = DBNull.Value;
                }
            }
        }

        public static int ToInt32(this string value)
        {
            int result;
            int.TryParse(value, out result);

            return result;
        }

        public static decimal ToDecimal(this string value)
        {
            decimal result;
            decimal.TryParse(value, out result);

            return result;
        }

        public static DateTime ToDateTime(this string value)
        {
            DateTime result;
            DateTime.TryParse(value, out result);

            return result;
        }

        public static bool IsNull(this object value)
        {
            return value == null;
        }

        public static bool IsNullOrEmpty<T>(this IEnumerable<T> enumerable)
        {
            if (enumerable == null)
            {
                return true;
            }

            var collection = enumerable as ICollection<T>;
            if (collection != null)
            {
                return collection.Count < 1;
            }
            return !enumerable.Any();
        }

        public static bool IsDBNull(this object value)
        {
            return value == DBNull.Value;
        }

    }
}