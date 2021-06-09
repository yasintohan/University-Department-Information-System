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
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from AboutPages");
            SqlDataReader dr = db.getData();
            if (dr.Read())
            {
                descText.Text = dr["Description"].ToString();
                MissionTxt.Text = dr["Mission"].ToString();
                VisionTxt.Text = dr["Vision"].ToString();
                CoreValues.Text = dr["CoreValues"].ToString();
            }
            
            db.close();

        }


        protected void updateAboutBtn_Click(object sender, EventArgs e)
        {

            DBFunctions db = new DBFunctions();
            db.UpdateAbout(descText.Text, MissionTxt.Text, VisionTxt.Text, CoreValues.Text);
        }

        protected void getDataBtn_Click(object sender, EventArgs e)
        {
            getData();
        }
    }
}