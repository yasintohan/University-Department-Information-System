﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UniversitySystem.Default" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@ViewBag.Title - ESTU</title>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/style-admin.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />

    <script src="Scripts/modernizr-2.8.3.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <script src="Scripts/jquery-3.4.1.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>



    <header>
        <div id="mogo-header">
            <div id="mogo-header-inner">
                <!--navbar menu-->
                <nav id="top-navbar" class="navbar navbar-default navbar-me">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed menu-collapsed-button" data-toggle="collapse" data-target="#navbar-primary-collapse" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <a class="navbar-brand site-logo" href='@Url.Action("Index", "Home")'>
                                <img class="img-fluid" src="Images/estuLogo.png" alt="Department of Computer Engineering">
                                <span style="font-size: 12px;">Department of Computer Engineering</span>
                            </a>
                        </div>





                        <div class="collapse navbar-collapse navbar-right hidden-xs">
                            <ul class="nav navbar-nav main-nav">
                                <li>@Html.ActionLink("Home", "Index", "Home")</li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Department <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>@Html.ActionLink("People", "People", "Department")</li>
                                        <li>@Html.ActionLink("About", "About", "Department")</li>
                                        <li>@Html.ActionLink("Infrastructure", "Infrastructure", "Department")</li>
                                        <li>@Html.ActionLink("Events", "Events", "Department")</li>
                                        <li>@Html.ActionLink("Contact", "Contact", "Department")</li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Educational <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>@Html.ActionLink("Courses", "Courses", "Educational")</li>
                                        <li>@Html.ActionLink("Senior Projects", "SeniorProjects", "Educational")</li>
                                    </ul>
                                </li>



                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Research <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>@Html.ActionLink("Research Areas", "ResearchAreas", "Research")</li>
                                        <li>@Html.ActionLink("Research Projects", "ResearchProjects", "Research")</li>
                                    </ul>
                                </li>

                                <li><a href="@Url.Action("Index", "Admin")">Sign-in <i class="fa fa-sign-in" aria-hidden="true"></i></a></li>
                            </ul>

                        </div>
                        <div class="collapse navbar-responsive-collapse hidden-lg hidden-md hidden-sm" id="navbar-primary-collapse">
                            <ul class="nav navbar-nav main-nav">
                                <li class="active">@Html.ActionLink("Home", "Index", "Home")</li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Department <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>@Html.ActionLink("People", "People", "Department")</li>
                                        <li>@Html.ActionLink("About", "About", "Department")</li>
                                        <li>@Html.ActionLink("Infrastructure", "Infrastructure", "Department")</li>
                                        <li>@Html.ActionLink("Events", "Events", "Department")</li>
                                        <li>@Html.ActionLink("Contact", "Contact", "Department")</li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Educational <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>@Html.ActionLink("Courses", "Courses", "Educational")</li>
                                        <li>@Html.ActionLink("Senior Projects", "SeniorProjects", "Educational")</li>
                                    </ul>
                                </li>

                              


                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Research <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>@Html.ActionLink("Research Areas", "ResearchAreas", "Research")</li>
                                        <li>@Html.ActionLink("Research Projects", "ResearchProjects", "Research")</li>
                                    </ul>
                                </li>
                                <li><a href="@Url.Action("Index", "Admin")">Sign-in <i class="fa fa-sign-in" aria-hidden="true"></i></a></li>

                            </ul>

                        </div><!-- /.navbar-collapse -->
                    </div>
                </nav>

                <!--slider section-->
                <div id="mogo-slider" class="carousel slide container" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <h2 class="mogo-slider-title">
                                <span class="mogo-slider-sub">Creative Template</span>
                                Welcome <br>to MoGo
                            </h2>
                            <a href="#" class="slider-btn">Learn more</a>
                        </div>
                        <div class="item">
                            <h2 class="mogo-slider-title">
                                <span class="mogo-slider-sub">Creative Template</span>
                                We Are <br>Creative
                            </h2>
                            <a href="#" class="slider-btn">Learn more</a>
                        </div>
                        <div class="item">
                            <h2 class="mogo-slider-title">
                                <span class="mogo-slider-sub">Responsive Design</span>
                                Responsive <br> Web Template
                            </h2>
                            <a href="#" class="slider-btn">Learn more</a>
                        </div>
                        <div class="item">
                            <h2 class="mogo-slider-title">
                                <span class="mogo-slider-sub">Strong Team</span>
                                We Have<br>Strong Team
                            </h2>
                            <a href="#" class="slider-btn">Learn more</a>
                        </div>
                    </div>

                    <!-- Indicators -->
                    <ul class="carousel-indicators clearfix">
                        <li data-target="#mogo-slider" data-slide-to="0" class="active">
                            <div class="inner">
                                <span class="number">01</span> intro
                            </div>
                        </li>
                        <li data-target="#mogo-slider" data-slide-to="1">
                            <div class="inner">
                                <span class="number">02</span> work
                            </div>
                        </li>
                        <li data-target="#mogo-slider" data-slide-to="2">
                            <div class="inner">
                                <span class="number">03</span> about
                            </div>
                        </li>
                        <li data-target="#mogo-slider" data-slide-to="3">
                            <div class="inner">
                                <span class="number">04</span> contacts
                            </div>
                        </li>
                    </ul>
                </div><!--end slider section-->
            </div>
        </div>
    </header><!--/Header End-->


    <div class="content container" style="margin-bottom:20px">
        @RenderBody()
    </div>






        <!-- Footer -->
        <section id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>Main Links</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Home</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Department</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Undergraduate</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Graduate</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Research</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>Department</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>People</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Infrastructure</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Events</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>Undergraduate</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Courseware</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Course List</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Curriculum</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Senior Projects</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                        <ul class="list-unstyled list-inline social text-center">
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-google-plus"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02" target="_blank"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                        <p class="h6">© All rights reserved<a href="index.html" target="_blank"> 1993-2020 CENG.</a></p>
                    </div>
                    <hr>
                </div>
            </div>
        </section>
        <!-- ./Footer -->




        <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>

</body>


</html>
