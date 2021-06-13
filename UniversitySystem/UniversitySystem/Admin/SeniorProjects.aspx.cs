using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class SeniorProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
                return;

            getData();

        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select *, FORMAT (Date, 'dd/MM/yyyy ') as datep, (Select Name From People Where Id = SeniorProjects.SuperVisor) as name from SeniorProjects");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(titleTxt.Text) && !String.IsNullOrEmpty(dateTxt.Text) && !String.IsNullOrEmpty(studentTxt.Text) && !String.IsNullOrEmpty(supervisorTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddProjects(studentTxt.Text, titleTxt.Text, dateTxt.Text, supervisorTxt.Text);
                getData();
                titleTxt.Text = "";
                dateTxt.Text = "";
                studentTxt.Text = "";
                supervisorTxt.Text = "";

            }

        }


        protected void DelButton_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            DBFunctions db = new DBFunctions();
            db.delete("SeniorProjects", "project_id", btn.CommandArgument);

            string path = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            Response.Redirect(path);
        }
    }
}