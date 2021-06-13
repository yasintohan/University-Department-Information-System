﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="UniversitySystem.Department.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Events - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


     <div class="row people" style="margin-top:20px">

        <div class="col-lg-12">

            <h2 class="about-h">Events</h2>


        </div>


        <div class="col-lg-12">

            <h3 class="about-h">Event Statistics</h3>

            <div class="col-lg-4 col-md-6 col-sm-12">

                <div class="table-responsive">
                    <table class="table table-striped table-sm ">
                        <thead>
                            <tr>
                                <th scope="col">Year</th>
                                <th scope="col">Events</th>
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

            <h3 class="about-h">
                Scientific and Social Events
            </h3>

            

                <div class="table-responsive">
                    <table class="table table-striped table-sm ">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Event Title</th>
                                <th scope="col">Date</th>
                                <th scope="col">Place</th>
                                <th scope="col">Participants</th>
                            </tr>
                        </thead>
                        <tbody>

                            <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <th scope="row"><%#Eval("Id") %></th>
                                        <td><%#Eval("Title") %></td>
                                        <td><%#Eval("Date") %></td>
                                        <td><%#Eval("Place") %></td>
                                        <td><%#Eval("Participants") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                            

                        </tbody>

                    </table>

                </div>
            

        </div>







    </div>




</asp:Content>
