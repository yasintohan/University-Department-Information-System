<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UniversitySystem.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .wrimagecard{	
	margin-top: 0;
    margin-bottom: 1.5rem;
    text-align: left;
    position: relative;
    background: #fff;
    box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
    border-radius: 4px;
    transition: all 0.3s ease;
}
.wrimagecard .fa{
	position: relative;
    font-size: 70px;
}
.wrimagecard-topimage_header{
padding: 20px;
}
a.wrimagecard:hover, .wrimagecard-topimage:hover {
    box-shadow: 2px 4px 8px 0px rgba(46,61,73,0.2);
}
.wrimagecard-topimage a {
    width: 100%;
    height: 100%;
    display: block;
}
.wrimagecard-topimage_title {
    padding: 20px 24px;
    height: 80px;
    padding-bottom: 0.75rem;
    position: relative;
}
.wrimagecard-topimage a {
    border-bottom: none;
    text-decoration: none;
    color: #525c65;
    transition: color 0.3s ease;
}




    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h1> Home </h1>
            <pre> Resize the screen to view the left slide menu </pre>
    </div>


	<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/Announces.aspx">
          <div class="wrimagecard-topimage_header" style="background-color:  rgba(51, 105, 232, 0.1)">
             <center><i class="fa fa-bullhorn" style="color:#3369e8"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Announcements
            <div class="pull-right badge" id="WrGridSystem"></div></h4>
          </div>
          
        </a>
      </div>
	</div>
    <div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/Events.aspx">
          <div class="wrimagecard-topimage_header" style="background-color: rgba(22, 160, 133, 0.1)">
            <center><i class = "fa fa-calendar" style="color:#16A085"></i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Events
            <div class="pull-right badge" id="WrControls"></div></h4>
          </div>
        </a>
      </div>
</div>
    
    <div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/News.aspx">
          <div class="wrimagecard-topimage_header" style="background-color:   rgba(250, 188, 9, 0.1)">
             <center><i class="fa fa-table" style="color:#fabc09"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>News
            <div class="pull-right badge" id="WrGridSystem"></div></h4>
          </div>
          
        </a>
      </div>
	</div>

     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <pre> Educational </pre>
    </div>
<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="#">
          <div class="wrimagecard-topimage_header" style="background-color:  rgba(213, 15, 37, 0.1)">
            <center><i class="fa fa-pencil-square-o" style="color:#d50f25"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title" >
            <h4>Courses
            <div class="pull-right badge" id="WrForms"></div>
            </h4>
          </div>
          
        </a>
      </div>
	</div>
	<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="#">
          <div class="wrimagecard-topimage_header" style="background-color:  rgba(51, 105, 232, 0.1)">
             <center><i class="fa fa-tasks" style="color:#3369e8"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Senior Projects
            <div class="pull-right badge" id="WrGridSystem"></div></h4>
          </div>
          
        </a>
      </div>
	</div>


    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <pre> Department </pre>
    </div>

    <div class="col-md-3 col-sm-4">
	<div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/People.aspx">
          <div class="wrimagecard-topimage_header" style="background-color:rgba(187, 120, 36, 0.1) ">
            <center><i class="fa fa-user" style="color:#BB7824"></i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>People
            <div class="pull-right badge">18</div></h4>
          </div>
        </a>
      </div>
      </div>
	<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/About.aspx">
          <div class="wrimagecard-topimage_header" style="background-color:  rgba(250, 188, 9, 0.1)">
             <center><i class="fa fa-info-circle" style="color:#fabc09"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>About
            <div class="pull-right badge" id="WrInformation"></div></h4>
          </div>
         
        </a>
      </div>
	</div>
	<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/Offices.aspx">
            <div class="wrimagecard-topimage_header" style="background-color: rgba(121, 90, 71, 0.1)">
           <center><i class="fa fa-building" style="color:#795a47"> </i></center> 
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Infrastructure
            <div class="pull-right badge" id="WrNavigation"></div></h4>
          </div>
          
        </a>
      </div>
	</div>
	<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/Contact.aspx">
         <div class="wrimagecard-topimage_header" style="background-color: rgba(130, 93, 9, 0.1)">
            <center><i class="fa fa-phone" style="color:#825d09"></i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Contact
            <div class="pull-right badge" id="WrThemesIcons"></div></h4>
          </div>
        </a>
      </div>
	</div>


     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <pre> Other </pre>
    </div>



    <div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="../Admin/ResearchAreas.aspx">
         <div class="wrimagecard-topimage_header" style="background-color: rgba(130, 93, 9, 0.1)">
            <center><i class="fa fa-magic" style="color:#825d09"></i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Researcg Areas
            <div class="pull-right badge" id="WrThemesIcons"></div></h4>
          </div>
        </a>
      </div>
	</div>




</asp:Content>
