using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace UniversitySystem
{
    public class DBFunctions
    {
        private SqlConnection cnn;
        private string querystr;

        public DBFunctions(string q)
        {
            querystr = q;
        }

        public SqlDataReader getData()
        {
            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

            SqlCommand cmd = new SqlCommand(querystr, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }

        public void close()
        {
            cnn.Close();
        }
        
            

    }
}