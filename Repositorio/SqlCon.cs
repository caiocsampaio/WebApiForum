using System.Data.SqlClient;

namespace WebApiForum.Repositorio
{
    public class SqlCon
    {
        protected SqlConnection con = null;
        protected SqlCommand cmd = null;
        protected SqlDataReader sdr = null;
        protected static string Db(){
            return @"Data Source=.\SQLEXPRESS; Initial Catalog=WebApiForum; uid=sa; pwd=COLOCAR_A_SENHA";
        }
    }
}