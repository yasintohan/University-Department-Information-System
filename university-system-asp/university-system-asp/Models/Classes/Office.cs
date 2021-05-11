using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class Office
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public int Floor { get; set; }
        public bool MeetingRoom { get; set; }
    }
}