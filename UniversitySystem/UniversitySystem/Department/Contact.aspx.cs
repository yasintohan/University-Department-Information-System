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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {
            DBFunctions db = new DBFunctions("Select * from Contacts");
            lstContact.DataSource = db.getData();
            lstContact.DataBind();
            db.close();

        }
    }
}