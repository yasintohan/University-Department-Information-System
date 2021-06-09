using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Labs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from Labs");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Description.Text) && !String.IsNullOrEmpty(Floor.Text) && !String.IsNullOrEmpty(Computer.Text))
            {


                string imgName = imageupload.FileName;
                //sets the image path  
                string imgPath = "../Images/Labs/" + imgName;
                //get the size in bytes that  

                int imgSize = imageupload.PostedFile.ContentLength;

                //validates the posted file before saving  
                if (imageupload.PostedFile != null && imageupload.PostedFile.FileName != "")
                {
                    
                        //then save it to the Folder  
                        imageupload.SaveAs(Server.MapPath(imgPath));
                        DBFunctions db = new DBFunctions();
                        db.AddLabs(Description.Text, Floor.Text, Computer.Text, Projector.Checked, Blackboard.Checked, AirConditioner.Checked, imgPath);
                        getData();
                        Description.Text = "";
                        Floor.Text = "";
                        Computer.Text = "";


                }





            }

        }
    }
}