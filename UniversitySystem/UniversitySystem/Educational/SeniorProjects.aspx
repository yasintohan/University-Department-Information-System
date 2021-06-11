<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SeniorProjects.aspx.cs" Inherits="UniversitySystem.Educational.SeniorProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <div class="row people" style="margin-top:20px">

    <div class="col-lg-12">

        <h2 class="about-h">Senior Projects</h2>


    </div>


    <div class="col-lg-12">

        <h3 class="about-h">Project Statistics</h3>

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

    </div>




    <div class="col-lg-12">

     
        <div class="table-responsive">
            <table class="table table-striped table-sm ">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Student</th>
                        <th scope="col">Project Title</th>
                        <th scope="col">Year</th>
                        <th scope="col">Supervisor</th>
                    </tr>
                </thead>
                <tbody>

                      <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <th scope="row"><%#Eval("project_id") %></th>
                                        <td><%#Eval("student_name") %></td>
                                        <td><%#Eval("Title") %></td>
                                        <td><%#Eval("datep") %></td>
                                        <td><%#Eval("name") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                 
                    
                </tbody>

            </table>

        </div>


    </div>







</div>





</asp:Content>
