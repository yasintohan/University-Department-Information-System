<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Infrastructure.aspx.cs" Inherits="UniversitySystem.Department.Infrastructure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



     <div class="row people" style="margin-top:20px">

        <div class="col-lg-12">

            <h2 class="about-h">Infrastructure</h2>


        </div>


        <div class="col-lg-12">

            <h3 class="about-h">
                Classrooms
            </h3>



            <div class="table-responsive">
                <table class="table table-striped table-sm ">
                    <thead>
                        <tr>
                            <th scope="col">Description</th>
                            <th scope="col">Floor</th>
                            <th scope="col">Capacity</th>
                            <th scope="col">Projector</th>
                            <th scope="col">Blackboard</th>
                            <th scope="col">Picture</th>
                        </tr>
                    </thead>
                    <tbody>
                            <asp:ListView runat="server" ID="lstClass">
                                <ItemTemplate>
                                       <tr>
                                            <th scope="row"><%#Eval("Description") %></th>
                                            <td><%#Eval("Floor") %></td>
                                            <td><%#Eval("Capacity") %></td>
                                            <td><%#Eval("Projector") %></td>
                                            <td><%#Eval("Blackboard") %></td>
                                            <td><img class="img-responsive" src="<%#Eval("Image") %>" /></td>
                                        </tr>
                                </ItemTemplate>
                            </asp:ListView>
                       

                    </tbody>

                </table>

            </div>


        </div>




        <div class="col-lg-12">

            <h3 class="about-h">
                Laboratories
            </h3>



            <div class="table-responsive">
                <table class="table table-striped table-sm ">
                    <thead>
                        <tr>
                            <th scope="col">Description</th>
                            <th scope="col">Floor</th>
                            <th scope="col">Computer</th>
                            <th scope="col">Projector</th>
                            <th scope="col">Blackboard</th>
                            <th scope="col">Air Conditioner</th>
                            <th scope="col">Picture</th>
                        </tr>
                    </thead>
                    <tbody>
                         <asp:ListView runat="server" ID="lstLab">
                                <ItemTemplate>
                                        <tr>
                                            <th scope="row"><%#Eval("Description") %></th>
                                            <td><%#Eval("Floor") %></td>
                                            <td><%#Eval("Computer") %></td>
                                            <td><%#Eval("Projector") %></td>
                                            <td><%#Eval("Blackboard") %></td>
                                            <td><%#Eval("AirConditioner") %></td>
                                            <td><img class="img-responsive" src="<%#Eval("Image") %>" /></td>
                                        </tr>
                                </ItemTemplate>
                            </asp:ListView>
                       
                        

                    </tbody>

                </table>

            </div>


        </div>




        <div class="col-lg-12">

            <h3 class="about-h">
                Offices
            </h3>

            <div class="col-lg-4 co-md-6 col-sm-12">
                <div class="table-responsive">
                    <table class="table table-striped table-sm ">
                        <thead>
                            <tr>
                                <th scope="col">Floor</th>
                                <th scope="col">Office</th>
                                <th scope="col">Meeting Room</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView runat="server" ID="lstOffice">
                                <ItemTemplate>
                                       <tr>
                                            <th scope="row"><%#Eval("Name") %></th>
                                            <td><%#Eval("Floor") %></td>
                                            <td><%#Eval("MeetingRoom") %></td>
                                        </tr>
                                </ItemTemplate>
                            </asp:ListView>
                            


                        </tbody>

                    </table>

                </div>
            </div>

        </div>







    </div>






</asp:Content>
