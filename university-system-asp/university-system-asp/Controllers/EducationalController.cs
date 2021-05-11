using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace university_system_asp.Controllers
{
    public class EducationalController : Controller
    {
        // GET: Educational
        public ActionResult Courses()
        {
            return View();
        }

        public ActionResult SeniorProjects()
        {
            return View();
        }

    }
}