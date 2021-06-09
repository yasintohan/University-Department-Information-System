﻿using System;
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

        public int testLogin(string u, string p)
        {
            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

            cmd = new SqlCommand("Select * from UserTable WHERE username = @uname AND password = @upass", cnn);
            cmd.Parameters.AddWithValue("@uname", u);
            cmd.Parameters.AddWithValue("@upass", p);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                return Int32.Parse(dr["user_id"].ToString());
            } else
            {
                return -1;
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

        public void AddOffice(string name, string floor, Boolean meeting)
        {
            cmd = new SqlCommand("Insert into Offices (Name, Floor, MeetingRoom) values (@p1, @p2, @p3)", cnn);
            cmd.Parameters.AddWithValue("@p1", name);
            cmd.Parameters.AddWithValue("@p2", floor);
            cmd.Parameters.AddWithValue("@p3", meeting);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public void AddEvent(string title, string date, string place, string parti)
        {
            cmd = new SqlCommand("Insert into Events (Title, Date, Place, Participants) values (@p1, @p2, @p3, @p4)", cnn);
            cmd.Parameters.AddWithValue("@p1", title);
            cmd.Parameters.AddWithValue("@p2", date);
            cmd.Parameters.AddWithValue("@p3", place);
            cmd.Parameters.AddWithValue("@p4", parti);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }


        public void AddAnnounce(string title, string desc, string datep, string datef, string id)
        {
            cmd = new SqlCommand("Insert into Announces (Title, Description, PublishDate, FinishDate, Author_Id) values (@p1, @p2, @p3, @p4, @p5)", cnn);
            cmd.Parameters.AddWithValue("@p1", title);
            cmd.Parameters.AddWithValue("@p2", desc);
            cmd.Parameters.AddWithValue("@p3", datep);
            cmd.Parameters.AddWithValue("@p4", datef);
            cmd.Parameters.AddWithValue("@p5", id);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public void AddNews(string title, string desc, string datep)
        {
            cmd = new SqlCommand("Insert into News (Title, Description, PublishDate) values (@p1, @p2, @p3)", cnn);
            cmd.Parameters.AddWithValue("@p1", title);
            cmd.Parameters.AddWithValue("@p2", desc);
            cmd.Parameters.AddWithValue("@p3", datep);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }


        public void AddLabs(string Description, string floor, string computer, Boolean Projector, Boolean Blackboard, Boolean AirConditioner, string image)
        {
            cmd = new SqlCommand("Insert into Labs (Description, Floor, Computer, Projector, Blackboard, AirConditioner, Image) values (@p1, @p2, @p3, @p4, @p5, @p6, @p7)", cnn);
            cmd.Parameters.AddWithValue("@p1", Description);
            cmd.Parameters.AddWithValue("@p2", floor);
            cmd.Parameters.AddWithValue("@p3", computer);
            cmd.Parameters.AddWithValue("@p4", Projector);
            cmd.Parameters.AddWithValue("@p5", Blackboard);
            cmd.Parameters.AddWithValue("@p6", AirConditioner);
            cmd.Parameters.AddWithValue("@p7", image);
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