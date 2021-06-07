using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Department
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }

        private void getData()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
            

            string query = "Select * from AboutPages";
            SqlCommand cmd = new SqlCommand(query, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            lstAbout.DataSource = dr;
            lstAbout.DataBind();
            cnn.Close();
        }
    }
}