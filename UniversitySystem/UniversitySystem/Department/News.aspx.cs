using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Department
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from News");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

            db = new DBFunctions("SELECT DATEPART(YYYY,PublishDate) as date, COUNT(PublishDate) as count FROM News GROUP BY DATEPART(YYYY,PublishDate)");
            lstCount.DataSource = db.getData();
            lstCount.DataBind();
            db.close();

        }
    }
}