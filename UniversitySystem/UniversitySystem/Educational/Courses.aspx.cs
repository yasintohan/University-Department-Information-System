using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Educational
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object username = Session["Username"];

            if (username == null)
            {

                Panel1.Visible = false;
            }
            else 
            {
                Panel2.Visible = false;
                getData();
            }
            
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from Courses");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }
    }
}