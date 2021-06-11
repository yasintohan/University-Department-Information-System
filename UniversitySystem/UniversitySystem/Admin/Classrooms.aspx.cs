using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Classrooms : System.Web.UI.Page
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

            DBFunctions db = new DBFunctions("Select * from Classrooms");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Description.Text) && !String.IsNullOrEmpty(Floor.Text) && !String.IsNullOrEmpty(Capacity.Text))
            {


                string imgName = imageupload.FileName;
                //sets the image path  
                string imgPath = "../Images/Classrooms/" + imgName;
                //get the size in bytes that  

                int imgSize = imageupload.PostedFile.ContentLength;

                //validates the posted file before saving  
                if (imageupload.PostedFile != null && imageupload.PostedFile.FileName != "")
                {

                    //then save it to the Folder  
                    imageupload.SaveAs(Server.MapPath(imgPath));
                    DBFunctions db = new DBFunctions();
                    db.AddClassroom(Description.Text, Floor.Text, Capacity.Text, Projector.Checked, Blackboard.Checked, imgPath);
                    getData();
                    Description.Text = "";
                    Floor.Text = "";
                    Capacity.Text = "";


                }





            }

        }

        protected void delete(string id)
        {

            DBFunctions db = new DBFunctions();
            db.delete("Classrooms", "Id", id);

            string path = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            Response.Redirect(path);
        }
    }
}