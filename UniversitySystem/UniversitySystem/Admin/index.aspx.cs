using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

    

            getData();

            
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select COUNT(Id) as people, (SELECT COUNT(Id) from Courses) as course from People");
            SqlDataReader dr = db.getData();
            if (dr.Read())
            {
                courselabel.Text = dr["course"].ToString();
                peoplelabel.Text = dr["people"].ToString();
            }
       
            db.close();


        }
    }
}