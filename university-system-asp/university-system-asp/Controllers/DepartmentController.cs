using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using university_system_asp.Models.Classes;

namespace university_system_asp.Controllers
{
    public class DepartmentController : Controller
    {

        DBContext dBContext = new DBContext();
        

        public ActionResult People()
        {
            return View();
        }

        public ActionResult About()
        {

            var values = dBContext.aboutPages.ToList();

            return View(values);
        }

        public ActionResult Contact()
        {
            var values = dBContext.contacts.ToList();

            return View(values);
        }

        public ActionResult Events()
        {
            return View();
        }

        public ActionResult Infrastructure()
        {
            return View();
        }
    }
}