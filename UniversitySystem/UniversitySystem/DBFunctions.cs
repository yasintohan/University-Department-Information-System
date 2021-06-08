using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace UniversitySystem
{
    public class DBFunctions
    {
        private SqlConnection cnn;
        private SqlCommand cmd;
        private string querystr;

        public DBFunctions(string q)
        {
            querystr = q;
            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

            cmd = new SqlCommand(querystr, cnn);
        }



        public SqlDataReader getData()
        {
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