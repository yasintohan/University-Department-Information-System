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

        public DBFunctions()
        {
        }

        public DBFunctions(string q)
        {
            querystr = q;
            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

            cmd = new SqlCommand(querystr, cnn);
        }

        public Boolean testLogin(string u, string p)
        {
            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

            cmd = new SqlCommand("Select * from UserTable WHERE username = @uname AND password = @upass", cnn);
            cmd.Parameters.AddWithValue("@uname", u);
            cmd.Parameters.AddWithValue("@upass", p);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                return true;
            } else
            {
                return false;
            }
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