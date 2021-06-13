using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
                return;

            getData();


        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select *, FORMAT (PublishDate, 'dd/MM/yyyy ') as datep from News");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(titleTxt.Text) && !String.IsNullOrEmpty(DescriptionTxt.Text) && !String.IsNullOrEmpty(pdateTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddNews(titleTxt.Text, DescriptionTxt.Text, pdateTxt.Text);
                getData();
                titleTxt.Text = "";
                DescriptionTxt.Text = "";
                pdateTxt.Text = "";


            }

        }

        protected void DelButton_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            DBFunctions db = new DBFunctions();
            db.delete("News", "Id", btn.CommandArgument);

            string path = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            Response.Redirect(path);
        }
    }
}