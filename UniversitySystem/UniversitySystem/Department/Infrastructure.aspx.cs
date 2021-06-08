using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Department
{
    public partial class Infrastructure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from Classrooms");
            lstClass.DataSource = db.getData();
            lstClass.DataBind();
            db.close();

            db = new DBFunctions("Select * from Labs");
            lstLab.DataSource = db.getData();
            lstLab.DataBind();
            db.close();

            db = new DBFunctions("Select * from Offices");
            lstOffice.DataSource = db.getData();
            lstOffice.DataBind();
            db.close();
        }

    }
}