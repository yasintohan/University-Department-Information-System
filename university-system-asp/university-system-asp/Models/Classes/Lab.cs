using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class Lab
    {
        [Key]
        public int Id { get; set; }
        public string Description { get; set; }
        public int Floor { get; set; }
        public int Computer { get; set; }
        public bool Projector { get; set; }
        public bool Blackboard { get; set; }
        public bool AirConditioner { get; set; }
        public string Image { get; set; }
    }
}