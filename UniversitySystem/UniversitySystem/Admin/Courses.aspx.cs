using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Courses : System.Web.UI.Page
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

            DBFunctions db = new DBFunctions("Select *,(Select Name from People where Id = Courses.Instructor_Id) as Instructor,(Select Name from People where Id = Courses.People_Id)  as assistan  from Courses");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(nameTxt.Text))
            {
                DBFunctions db = new DBFunctions();

                db.AddCourse(nameTxt.Text, CourseBook.Text, Grading.Text, Instructor_Id.Text, Assistan.Text);
                getData();
                nameTxt.Text = "";
                CourseBook.Text = "";
                Grading.Text = "";
                Instructor_Id.Text = "";
                Assistan.Text = "";
            }

        }

        protected void delete(string id)
        {

            DBFunctions db = new DBFunctions();
            db.delete("Courses", "Id", id);

            string path = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            Response.Redirect(path);
        }
    }
}