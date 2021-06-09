using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object username = Session["Username"];

            if (username != null)
            {
               Response.Redirect("../Admin/index.aspx");
            }
            else
            {

            }
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {

            if (!String.IsNullOrEmpty(txtUserName.Text) && !String.IsNullOrEmpty(txtPassword.Text))
            {

                DBFunctions db = new DBFunctions();
                int id = db.testLogin(txtUserName.Text, txtPassword.Text);
                if (id != -1)
                {
                    if(rememberCheck.Checked)
                        Session.Timeout = 1200;
                    else
                        Session.Timeout = 60;

                    Session.Add("User_id", id);

                    Session.Add("Username", txtUserName.Text);
                    Response.Redirect("../Admin/index.aspx");

                }
                else
                {
                    statusLabel.Text = "Login Error.";
                }

                db.close();

            }
            else
            {
                statusLabel.Text = "Please fill blanks.";
            }
        }
    }
}