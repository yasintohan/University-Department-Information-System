using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace university_system_asp.Models.Classes
{
    public class DBContext : DbContext
    {

        public DbSet<AboutPage> aboutPages { get; set; }
        public DbSet<Announce> announces { get; set; }
        public DbSet<Carousel> carousels { get; set; }
        public DbSet<Classroom> classrooms { get; set; }
        public DbSet<Contact> contacts { get; set; }
        public DbSet<Events> events { get; set; }
        public DbSet<Lab> labs { get; set; }
        public DbSet<News> news { get; set; }
        public DbSet<Office> offices { get; set; }
        public DbSet<People> peoples { get; set; }
        public DbSet<ResearchArea> researchAreas { get; set; }
        public DbSet<ResearchProject> researchProjects { get; set; }
        public DbSet<SocialIcon> socialIcons { get; set; }
        public DbSet<Course> courses { get; set; }
        public DbSet<CourseAnnounce> courseAnnounces { get; set; }
        public DbSet<Assignment> assignments { get; set; }
        public DbSet<CourseWeek> courseWeeks { get; set; }


    }
}