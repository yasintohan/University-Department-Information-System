using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySystem.Admin
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void getData()
        {

            DBFunctions db = new DBFunctions("Select * from Contacts");
            SqlDataReader dr = db.getData();
            if (dr.Read())
            {
                adressText.Text = dr["AdressC"].ToString();
                telTxt.Text = dr["TelC"].ToString();
                faxTxt.Text = dr["FaxC"].ToString();
                mailTxt.Text = dr["MailC"].ToString();
                facebookTxt.Text = dr["Facebook"].ToString();
                twitterTxt.Text = dr["Twitter"].ToString();
                LinkedinTxt.Text = dr["Linkedin"].ToString();
                YoutubeTxt.Text = dr["Youtube"].ToString();
            }

            db.close();

        }


        protected void updateAboutBtn_Click(object sender, EventArgs e)
        {

            DBFunctions db = new DBFunctions();
            db.UpdateContact(adressText.Text, telTxt.Text, faxTxt.Text, mailTxt.Text, facebookTxt.Text, twitterTxt.Text, LinkedinTxt.Text, YoutubeTxt.Text);
        }

        protected void getDataBtn_Click(object sender, EventArgs e)
        {
            getData();
        }
    }
}