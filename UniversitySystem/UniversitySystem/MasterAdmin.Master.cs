using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem
{
    public partial class MasterAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object username = Session["Username"];
            object userrole = Session["Userrole"];

            if (username == null)
            {
              
                Response.Redirect("../Admin/login.aspx");
            } else if (!Session["Userrole"].ToString().Trim().Equals("Admin", StringComparison.InvariantCultureIgnoreCase))
            {
                Session.Abandon();
                Response.Redirect("../");
            }


            

        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../");
        }
    }
}