using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

   
            DBFunctions db = new DBFunctions("Select TOP 7 FORMAT (PublishDate, 'dd/MM/yyyy ') as datep, Title from Announces Order By PublishDate Desc");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

            db = new DBFunctions("Select TOP 7 FORMAT (Date, 'dd/MM/yyyy ') as datep, Title from Events Order By Date Desc");
            lstEvents.DataSource = db.getData();
            lstEvents.DataBind();
            db.close();

            db = new DBFunctions("Select TOP 7 FORMAT (PublishDate, 'dd/MM/yyyy ') as datep, Title from News Order By PublishDate Desc");
            lstNews.DataSource = db.getData();
            lstNews.DataBind();
            db.close();

        }
    }
}