using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace university_system_asp.Controllers
{
    public class ResearchController : Controller
    {
        // GET: Research
        public ActionResult ResearchAreas()
        {
            return View();
        }

        public ActionResult ResearchProjects()
        {
            return View();
        }
    }
}