# University Department Information-System <img src="https://img.shields.io/badge/-C%23-659ad2?style=flat&logo=c%2B%2B&logoColor=ffffff">

<img src = "/images/university-system-banner.jpg">

It is a website where university students can access a lot of information about the department they study. On the site, they is able to access announcements, teachers, all the courses that are and are not opened this semester, the pages of the courses and the weekly plan, homework and files on the course pages. This website is a clone of our university's "https://ceng.eskisehir.edu.tr/" page. There are student and admin access. Admin can add or remove announcements, courses, users, students and all other features. I have specified the pages you can change and access information on the website on the next page.

  - Source Codes with Asp.NET Web Forms [Link](https://github.com/yasintohan/University-Department-Information-System/tree/main/UniversitySystem)
  - Source Codes with Asp.NET MVC Structure [Link](https://github.com/yasintohan/University-Department-Information-System/tree/main/university-system-asp/university-system-asp) (it's not over)
  - Source codes by bootstrap design only [Link](https://github.com/yasintohan/University-Department-Information-System/tree/main/university-system)

---

The front-end design of the website is designed using ``Bootstrap`` . ``Microsoft SQL Server Management Studio`` is used for the database to run in the background. Page layouts are designed using ``Asp.NET Web Forms`` and ``MasterPage`` structure. There are 2 MasterPages on our site. I used ``Main.Master`` MasterPage for the pages that users can see and our data will be presented. ``MasterAdmin.Master`` MasterPage is used for admin and database operations. All database operations are handled in the ``DBFunctions.cs`` class. Our database connection information is located in the connectionStrings section of our ``Web.config`` file. The connectionStrings I specified in the image below are the connectionStrings I use on my own server.

<img src = "/images/connectionString.png" height="50%" width="50%">

---

## Pages


1-	Home
*	News
*	Announcements

2-	Department
*	People
*	About
*	Infrastructure
*	Events
*	Contact

3-	Educational
*	Courses
*	Course Page
*	Senior Projects


4-	Research Areas

5-	Login

6-	Admin
  *	Home
  *	Announces
  *	News
  *	Department
  	
    1-	People
    
    2-	About
    
    3-	Infrastructure
    *	Classrooms
    *	Labs
    *	Offices
    
    4-	Events
    
    5-	Contact
    
  *	Educational

     1-	Courses

      *	Weeks
      *	Announces
      *	Assignments

      2-	Senior Projects
  
  *	Research Areas
  *	Users
  *	Carousel
  *	Social Icons

---

## Database

<img src = "/images/database.png" >

-	All pages on the site are designed to be editable from the admin page without the need to edit the codes. For example, the social icons in the footer tab and the address information on the contact page can also be edited from the admin page.
-	We can provide access to the admin page by providing user information to the instructors we want to be able to login.
-	The slider on the homepage is designed to be editable by the administrator.
-	In addition to all the course information, the weekly plan, announcements and assignments can be uploaded on the course add page. There is also the option to attach files to the course plan and assignments.

---

## Images
### Computer

<img src = "/images/main.png" height="50%" width="50%"><img src = "/images/footer.png" height="50%" width="50%"><img src = "/images/people.png" height="50%" width="50%"><img src = "/images/login.png" height="50%" width="50%"><img src = "/images/admin.png" height="50%" width="50%">

### Mobile
<img src = "/images/main-phone.png" height="50%" width="50%"><img src = "/images/admin-phone.png" height="50%" width="50%">

---

by [Yasin Tohan](https://github.com/yasintohan)


