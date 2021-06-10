using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            getData();
        }

        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from UserTable");
            listUser.DataSource = db.getData();
            listUser.DataBind();
            db.close();

        }




        protected void addUserBtn_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(usernameTxt.Text) && !String.IsNullOrEmpty(PasswordTxt.Text) && !String.IsNullOrEmpty(roleTxt.Text))
            {
                DBFunctions db = new DBFunctions();
                db.AddUser(usernameTxt.Text, PasswordTxt.Text, roleTxt.Text);
                getData();
                usernameTxt.Text = "";
                PasswordTxt.Text = "";
                roleTxt.Text = "";

            }
        }

    }
}