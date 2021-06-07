using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Department
{
    public partial class People : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from People");
            lstPeople.DataSource = db.getData();
            lstPeople.DataBind();
            db.close();

        }
    }
}