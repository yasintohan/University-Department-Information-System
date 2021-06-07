using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Educational
{
    public partial class SeniorProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            //DBFunctions db = new DBFunctions("Select * from Events");
           // lstData.DataSource = db.getData();
           // lstData.DataBind();
            //db.close();

           // db = new DBFunctions("SELECT DATEPART(YYYY,Date) as date, COUNT(Date) as count FROM Events GROUP BY DATEPART(YYYY,Date)");
            //lstCount.DataSource = db.getData();
            //lstCount.DataBind();
            //db.close();

        }
    }
}