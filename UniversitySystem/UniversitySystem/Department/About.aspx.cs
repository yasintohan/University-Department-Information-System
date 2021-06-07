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

            DBFunctions db = new DBFunctions("Select * from AboutPages");
            lstAbout.DataSource = db.getData();
            lstAbout.DataBind();
            db.close();

        }
    }
}