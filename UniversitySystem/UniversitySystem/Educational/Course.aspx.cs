using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Educational
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;

            object username = Session["Username"];

            if (username == null)
            {

                Panel1.Visible = false;
            }
            else
            {
                Panel2.Visible = false;
                if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                {
                    string courseId = Request.QueryString["Id"];
                    getData(courseId);

                }
            }

           
            
        }

        private void getData(string Id)
        {

            string dataquery = "Select *, (Select Name from People Where Id = Courses.People_Id) as Assistant, (Select Name from People Where Id = Courses.Instructor_Id) as Instructor from Courses Where Id = " + Id;
            DBFunctions db = new DBFunctions(dataquery);
            SqlDataReader data = db.getData();
           
            if (data.Read())
            {
                Instructor.Text = data["Instructor"].ToString();
                Assistant.Text = data["Assistant"].ToString();
                Book.Text = data["CourseBook"].ToString();
                Grading.Text = data["Grading"].ToString();
            }
           
            db.close();

            string weekquery = "Select * from CourseWeeks Where Course_Id = " + Id + " Order by Id";
            db = new DBFunctions(weekquery);
            weeklist.DataSource = db.getData();
            weeklist.DataBind();
            db.close();

            string announcequery = "Select * from CourseAnnounces Where Course_Id = " + Id + " Order by PublishDate desc";
            db = new DBFunctions(announcequery);
            announceList.DataSource = db.getData();
            announceList.DataBind();
            db.close();

            string taskquery = "Select * from Assignments Where Course_Id = " + Id + " Order by Id desc";
            db = new DBFunctions(taskquery);
            taskList.DataSource = db.getData();
            taskList.DataBind();
            db.close();
        }
    }
}