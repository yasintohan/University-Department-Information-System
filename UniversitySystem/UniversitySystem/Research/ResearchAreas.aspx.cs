using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Research
{
    public partial class ResearchAreas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from ResearchAreas");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();


        }
    }
}