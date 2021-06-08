using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Research
{
    public partial class ResearchProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select *, DATEPART(YYYY,StartDate) as date , (Select Name from People Where Id = ResearchProjects.Director_Id) as Director from ResearchProjects");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

            db = new DBFunctions("SELECT DATEPART(YYYY,StartDate) as date, COUNT(StartDate) as count FROM ResearchProjects GROUP BY DATEPART(YYYY,StartDate)");
            lstCount.DataSource = db.getData();
            lstCount.DataBind();
            db.close();

        }
    }
}