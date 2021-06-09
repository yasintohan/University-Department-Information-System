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

        public void UpdateCarousel(string id, string title, string sub, string desc, string mini)
        {
            cmd = new SqlCommand("Update Carousels SET Title = @p1, SubTitle = @p2, Description = @p3, MiniTitle = @p4 Where Id = @p5", cnn);
            cmd.Parameters.AddWithValue("@p1", title);
            cmd.Parameters.AddWithValue("@p2", sub);
            cmd.Parameters.AddWithValue("@p3", desc);
            cmd.Parameters.AddWithValue("@p4", mini);
            cmd.Parameters.AddWithValue("@p5", id);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public void UpdateContact(string adress, string tel, string fax, string mail, string face, string twit, string linked, string youtube)
        {
            cmd = new SqlCommand("Update Contacts SET AdressC = @p1, TelC = @p2, FaxC = @p3, MailC = @p4, Facebook = @p5, Twitter = @p6, Linkedin = @p7, Youtube = @p8 Where 1=1", cnn);
            cmd.Parameters.AddWithValue("@p1", adress);
            cmd.Parameters.AddWithValue("@p2", tel);
            cmd.Parameters.AddWithValue("@p3", fax);
            cmd.Parameters.AddWithValue("@p4", mail);
            cmd.Parameters.AddWithValue("@p5", face);
            cmd.Parameters.AddWithValue("@p6", twit);
            cmd.Parameters.AddWithValue("@p7", linked);
            cmd.Parameters.AddWithValue("@p8", youtube);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

    }
}