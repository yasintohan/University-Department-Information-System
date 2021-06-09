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
            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
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

        public void AddSocialIcon(string iconname, string link)
        {
            cmd = new SqlCommand("Insert into SocialIcons (IconName, Link) values (@iconname, @linktxt)", cnn);
            cmd.Parameters.AddWithValue("@iconname", iconname);
            cmd.Parameters.AddWithValue("@linktxt", link);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public void AddArea(string area)
        {
            cmd = new SqlCommand("Insert into ResearchAreas (Area) values (@areaname)", cnn);
            cmd.Parameters.AddWithValue("@areaname", area);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
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

        public void UpdateAbout(string p1, string p2, string p3, string p4)
        {
            cmd = new SqlCommand("Update AboutPages SET Description = @p1, Mission = @p2, Vision = @p3, CoreValues = @p4 Where 1=1", cnn);
            cmd.Parameters.AddWithValue("@p1", p1);
            cmd.Parameters.AddWithValue("@p2", p2);
            cmd.Parameters.AddWithValue("@p3", p3);
            cmd.Parameters.AddWithValue("@p4", p4);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        
            

    }
}