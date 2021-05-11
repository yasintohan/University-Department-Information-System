using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class ResearchArea
    {

        [Key]
        public int Id { get; set; }
        public string Area { get; set; }

    }
}