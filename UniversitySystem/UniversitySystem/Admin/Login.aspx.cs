using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
                SqlDataReader dr = db.testLogin(txtUserName.Text, txtPassword.Text);
                if (dr.Read())
                {
                    if(rememberCheck.Checked)
                        Session.Timeout = 1200;
                    else
                        Session.Timeout = 60;

                    Session.Add("User_id", Int32.Parse(dr["user_id"].ToString()));
                    Session.Add("Username", txtUserName.Text);
                    Session.Add("Userrole", dr["role"].ToString());
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