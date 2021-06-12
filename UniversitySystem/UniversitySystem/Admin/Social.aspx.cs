using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Social : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
                return;

            getData();

            if (!string.IsNullOrEmpty(Request.QueryString["delete"]))
            {
                string id = Request.QueryString["delete"];
                delete(id);

            }
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from SocialIcons");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(iconNameTxt.Text) && !String.IsNullOrEmpty(linkTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddSocialIcon(iconNameTxt.Text, linkTxt.Text);
                getData();
                iconNameTxt.Text = "";
                linkTxt.Text = "";
            }

        }

        protected void delete(string id)
        {

            DBFunctions db = new DBFunctions();
            db.delete("SocialIcons", "Id", id);

            string path = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            Response.Redirect(path);
        }
    }
}