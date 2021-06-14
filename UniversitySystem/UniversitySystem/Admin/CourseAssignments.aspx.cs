using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class CourseAssignments : System.Web.UI.Page
    {
        private int id = -1;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack)
                return;



            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                id = Int32.Parse(Request.QueryString["id"]);
                getData();

            }

        
        }

        private void getData()
        {
            if (id != -1)
            {
                string querystr = "Select * from Assignments Where Course_Id = " + id;
                DBFunctions db = new DBFunctions(querystr);
                lstData.DataSource = db.getData();
                lstData.DataBind();
                db.close();
            }


        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(descTxt.Text) && !String.IsNullOrEmpty(titleTxt.Text))
            {
                string docName = folderUpload.FileName;
                string docPath = "../Documents/" + docName;

                int docSize = folderUpload.PostedFile.ContentLength;

                if (folderUpload.PostedFile != null && folderUpload.PostedFile.FileName != "")
                {
                    folderUpload.SaveAs(Server.MapPath(docPath));
                }

                DBFunctions db = new DBFunctions();
                id = Int32.Parse(Request.QueryString["id"]);
                db.AddAssignment(titleTxt.Text, descTxt.Text, sdateTxt.Text, fdateTxt.Text, docPath, id, docName);
                getData();
                descTxt.Text = "";
                titleTxt.Text = "";
            }

        }


        protected void DelButton_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            DBFunctions db = new DBFunctions();
            db.delete("Assignments", "Id", btn.CommandArgument);

            string path = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect(path);
        }
    }
}