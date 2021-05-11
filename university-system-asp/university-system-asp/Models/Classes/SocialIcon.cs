using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class SocialIcon
    {
        [Key]
        public int Id { get; set; }
        public string IconName { get; set; }
        public string Link { get; set; }
    }
}