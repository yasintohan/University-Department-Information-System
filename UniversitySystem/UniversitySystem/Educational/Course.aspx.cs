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

            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                string courseId = Request.QueryString["Id"];
                getData(courseId);

            }
            
        }

        private void getData(string Id)
        {

            //DBFunctions db = new DBFunctions("Select *, FORMAT (Date, 'dd/MM/yyyy ') as datep from Events");
            //weeklist.DataSource = db.getData();
            //weeklist.DataBind();
            //db.close();
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
        }
    }
}