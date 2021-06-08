<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResearchProjects.aspx.cs" Inherits="UniversitySystem.Research.ResearchProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <div class="row people" style="margin-top:20px">

        <div class="col-lg-12">

            <h2 class="about-h">Researh Projects</h2>


        </div>


        <div class="col-lg-12">

           <h3 class="about-h">Researh Project Statistics</h3>
        </div>



        <div class="col-lg-4 col-md-6 col-sm-12">

            <div class="table-responsive">
                <table class="table table-striped table-sm ">
                    <thead>
                        <tr>
                            <th scope="col">Year</th>
                            <th scope="col">Projects</th>
                        </tr>
                    </thead>
                    <tbody>
                         <asp:ListView runat="server" ID="lstCount">
                                <ItemTemplate>
                                    <tr>
                                        <th scope="row"><%#Eval("date") %></th>
                                        <td><%#Eval("Count") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                        

                    </tbody>

                </table>

            </div>
        </div>






    <div class="col-lg-12 col-lg-12 col-md-12 col-sm-12">


        <div class="table-responsive">
            <table class="table table-striped table-sm ">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Subject</th>
                        <th scope="col">Type</th>
                        <th scope="col">Project No</th>
                        <th scope="col">StartDate</th>
                        <th scope="col">Duration</th>
                        <th scope="col">Budget</th>
                        <th scope="col">Director</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                   <tr>
                                        <th scope="row"><%#Eval("Id") %></th>
                                        <td><%#Eval("Subject") %></td>
                                        <td><%#Eval("Type") %></td>
                                        <td><%#Eval("ProjectNo") %></td>
                                        <td><%#Eval("date") %></td>
                                        <td><%#Eval("Duration") %></td>
                                        <td><%#Eval("Budget") %></td>
                                        <td><%#Eval("Director") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>

                    
                </tbody>

            </table>

        </div>


    </div>







</div>




</asp:Content>
