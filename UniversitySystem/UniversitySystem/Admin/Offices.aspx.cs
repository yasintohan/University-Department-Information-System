using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Offices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from Offices");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(nameTxt.Text) && !String.IsNullOrEmpty(floorTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddOffice(nameTxt.Text, floorTxt.Text, meetingCheck.Checked);
                getData();
                nameTxt.Text = "";
                floorTxt.Text = "";

            }

        }
    }
}