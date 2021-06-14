<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UniversitySystem.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

     <div class="row" style="margin-top:20px">

        <div class="col-lg-12" style="padding:20px">
            <h3 class="about-h">About Department</h3>

            <p>With recent advances in industry and technology, there is an ever increasing demand for expert technical staff on computer technologies. Eskişehir Technical University (formerly Anadolu University) Computer Engineering Department was founded in 1993 to educate computer engineers equipped with cutting-edge tecnological skills. Our department has a B.Sc. program since 2000-2001 Fall semester. Without making concession of the good quality, both academic staff and the infrastructure are improved in order to keep up with the changes in computer technologies. The aim of the department is to graduate well-educated and conscious computer engineers who obey ethical rules. There are also graduate (Master and Doctorate) programs offered by the department.</p>

            <p>Language of instruction is English in B.Sc. program. Duration of the B.Sc. program is 5 years, one of which is spent at the English preparation school. The department is founded on Iki Eylul campus of Eskişehir Technical University with 5.000 m2 footprint.</p>

        </div>

        <div class="col-lg-8" style="padding:20px">

            <p>Computer Engineering Program of Eskişehir Technical University is accredited by <a class="" href="">MÜDEK</a> (Member of <a class="" href="">EUR-ACE</a> and <a class="" href="">International Engineering Alliance</a>) since September 2009.</p>

        </div>


        <div class="col-lg-2">

            <img class="img-responsive" src="Images/map_v2.png" alt=""/>
        </div>

        <div class="col-lg-2">

            <img class="img-responsive" src="Images/logo_mudek.jpg" alt=""/><img class="img-responsive" src="Images/logo_eurace.jpg" alt=""/><img class="img-responsive" src="Images/logo_eng.jpg" alt=""/>
        </div>


        <div class="col-lg-12">

            <ul>
                <li><a class="" href="index.html">2020-2021 Fall - Undergraduate Course Schedule</a></li>
                <li><a class="" href="index.html">2020-2021 Spring - Undergraduate Course Schedule</a></li>
                <li><a class="" href="index.html">2020-2021 Fall - Graduate Course Schedule</a></li>
                <li><a class="" href="index.html">2020-2021 Spring - Graduate Course Schedule</a></li>

            </ul>

        </div>

    </div>


    <div class="row" style="margin-top:50px; ">

        <div class="col-lg-4">

            <div class="announce-title">
                <a class="pull-right" href="../Department/Announces.aspx">All announcements <i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
                <h3>Announcements</h3>
            </div>

            <div class="row row-striped">

               

                <ul>

                    <asp:ListView runat="server" ID="lstData">
                        <ItemTemplate>
                             <li><%#Eval("datep") %><i class="fa fa-calendar-o" aria-hidden="true"></i> <%#Eval("Title") %> </li>
                            
                        </ItemTemplate>
                    </asp:ListView>


                </ul>


            </div>


        </div>


        <div class="col-lg-4">

            <div class="announce-title">
                <a class="pull-right" href="../Department/Events.aspx">All events <i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
                <h3>Events</h3>
            </div>


            <div class="row row-striped">



                <ul>

                    <asp:ListView runat="server" ID="lstEvents">
                        <ItemTemplate>
                             <li><%#Eval("datep") %><i class="fa fa-calendar-o" aria-hidden="true"></i> <%#Eval("Title") %> </li>
                            
                        </ItemTemplate>
                    </asp:ListView>


                </ul>


            </div>


        </div>



        <div class="col-lg-4">

            <div class="announce-title">
                <a class="pull-right" href="../Department/News.aspx">All news <i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
                <h3>News</h3>

            </div>

            <div class="row row-striped">



                <ul>

                     <asp:ListView runat="server" ID="lstNews">
                        <ItemTemplate>
                             <li><%#Eval("datep") %><i class="fa fa-calendar-o" aria-hidden="true"></i> <%#Eval("Title") %> </li>
                            
                        </ItemTemplate>
                    </asp:ListView>


                </ul>


            </div>


        </div>

    </div>

</asp:Content>
