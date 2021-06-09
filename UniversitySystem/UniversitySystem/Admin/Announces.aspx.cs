using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Announces : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select *, FORMAT (PublishDate, 'dd/MM/yyyy ') as datep, FORMAT (FinishDate, 'dd/MM/yyyy ') as datef, (Select username From UserTable Where user_id = Announces.Author_Id) as Author from Announces");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(titleTxt.Text) && !String.IsNullOrEmpty(DescriptionTxt.Text) && !String.IsNullOrEmpty(pdateTxt.Text) && !String.IsNullOrEmpty(fdateTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddAnnounce(titleTxt.Text, DescriptionTxt.Text, pdateTxt.Text, fdateTxt.Text , Session["User_id"].ToString());
                getData();
                titleTxt.Text = "";
                DescriptionTxt.Text = "";
                pdateTxt.Text = "";
                fdateTxt.Text = "";

            }

        }
    }
}