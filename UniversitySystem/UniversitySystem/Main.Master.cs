using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from SocialIcons");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

            DBFunctions db2 = new DBFunctions("Select TOP 1 * from Carousels");
            lstCarousel1.DataSource = db2.getData();
            lstCarousel1.DataBind();
            db2.close();
            lstInd1.DataSource = db2.getData();
            lstInd1.DataBind();
            db2.close();

            db = new DBFunctions("Select TOP 4 * from Carousels WHERE NOT Id = (Select TOP 1 Id from Carousels)");

            lstCarousel2.DataSource = db.getData();
            lstCarousel2.DataBind();
            db.close();
            lstInd2.DataSource = db.getData();
            lstInd2.DataBind();
            db.close();


        }
    }
}