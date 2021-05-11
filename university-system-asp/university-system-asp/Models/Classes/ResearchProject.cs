using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class ResearchProject
    {
        [Key]
        public int Id { get; set; }
        public string Subject { get; set; }
        public string Type { get; set; }
        public string ProjectNo { get; set; }
        public DateTime StartDate { get; set; }
        public string Duration { get; set; }
        public double Budget { get; set; }
        public People Director { get; set; }

    }
}