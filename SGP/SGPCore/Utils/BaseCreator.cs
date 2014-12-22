using System.Data.SqlClient;

namespace SGPCore.Utils
{
    public class BaseCreator
    {
        protected string name;
        protected object[] objects;
        protected SqlDataReader dr;

        public string Alias
        {
            get { return name; }
        }

        public BaseCreator(SqlDataReader dataReader, string alias = "", params object[] include)
        {
            name = alias;
            objects = include;
            dr = dataReader;
        }
    }
}
 