using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using university_system_asp.Models.Classes;

namespace university_system_asp.Controllers
{
    public class ResearchController : Controller
    {
        // GET: Research
        DBContext dBContext = new DBContext();

        public ActionResult ResearchAreas()
        {
            var values = dBContext.researchAreas.ToList();

            return View(values);
        }

        public ActionResult ResearchProjects()
        {
            return View();
        }
    }
}