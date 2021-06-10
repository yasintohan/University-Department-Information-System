using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class People : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select *,(Select username From UserTable Where user_id = People.user_id) as username from People");
            lstData.DataSource = db.getData();
            lstData.DataBind();
            db.close();


        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(nameTxt.Text) && !String.IsNullOrEmpty(mailTxt.Text))
            {


                string imgName = imageupload.FileName;
                //sets the image path  
                string imgPath = "../Images/People/" + imgName;
                //get the size in bytes that  

                int imgSize = imageupload.PostedFile.ContentLength;

                //validates the posted file before saving  
                if (imageupload.PostedFile != null && imageupload.PostedFile.FileName != "")
                {

                    //then save it to the Folder  
                    imageupload.SaveAs(Server.MapPath(imgPath));
                    DBFunctions db = new DBFunctions();
                    db.AddPeople(nameTxt.Text, degreeTxt.Text, imgPath, mailTxt.Text, telTxt.Text, userTxt.Text);
                    getData();
                    nameTxt.Text = "";
                    degreeTxt.Text = "";
                    mailTxt.Text = "";
                    telTxt.Text = "";
                    userTxt.Text = "";
                }





            }

        }

        
    }
}