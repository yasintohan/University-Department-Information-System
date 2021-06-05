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
            Session.Timeout = 120;


            if (txtUserName.Text == "yasin" & txtPassword.Text == "123456")
            {

                Session.Add("Username", txtUserName.Text);

                Response.Redirect("../Admin/index.aspx");

            }
            else
            {
                statusLabel.Text = "Login Error.";
            }
        }
    }
}