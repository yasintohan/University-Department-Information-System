using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class Course
    {

        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public People Instructor { get; set; }
        public ICollection<People> Asistans { get; set; }
        public string CourseBook { get; set; }
        public string Grading { get; set; }
        public ICollection<CourseWeek> courseWeeks { get; set; }
        public ICollection<CourseAnnounce> courseAnnounces { get; set; }
        public ICollection<Assignment> assignments { get; set; }



    }
}