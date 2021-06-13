using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class ResearchAreas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
                return;

            getData();


        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from ResearchAreas");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(areaTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddArea(areaTxt.Text);
                getData();
                areaTxt.Text = "";
                
            }

        }



        protected void DelButton_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            DBFunctions db = new DBFunctions();
            db.delete("ResearchAreas", "Id", btn.CommandArgument);

            string path = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            Response.Redirect(path);
        }
    }
}