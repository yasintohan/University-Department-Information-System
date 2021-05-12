using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace university_system_asp.Models.Classes
{
    public class Assignment
    {

        [Key]
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Document { get; set; }
        public DateTime PublishDate { get; set; }
        public DateTime FinishDate { get; set; }
        public bool Status { get; set; }
    }
}