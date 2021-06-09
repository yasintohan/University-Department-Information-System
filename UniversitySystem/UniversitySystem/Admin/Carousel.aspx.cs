using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Carousel : System.Web.UI.Page
    {
        public SqlConnection SqlConnection { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void getData(string id)
        {

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

            SqlCommand cmd = new SqlCommand("Select * from Carousels WHERE Id = @idtext", cnn);
            cmd.Parameters.AddWithValue("@idtext", id);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                IdLabel.Text = dr["Id"].ToString();
                TitleTxt.Text = dr["Title"].ToString();
                SubTitleTxt.Text = dr["SubTitle"].ToString();
                DescriptionTxt.Text = dr["Description"].ToString();
                MiniTitleTxt.Text = dr["MiniTitle"].ToString();
            }

            cnn.Close();

        }


        protected void updateBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(IdLabel.Text))
            {
                DBFunctions db = new DBFunctions();
                db.UpdateCarousel(IdLabel.Text, TitleTxt.Text, SubTitleTxt.Text, DescriptionTxt.Text, MiniTitleTxt.Text);
            }
               
        }

        protected void getDataBtn_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            getData(button.Text);
        }

    }
}