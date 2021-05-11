using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class People
    {

        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Degree { get; set; }
        public string Image { get; set; }
        public string Mail { get; set; }
        public string Tel { get; set; }

    }
}