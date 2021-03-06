<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="UniversitySystem.Department.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>News - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    
     <div class="row people" style="margin-top:20px">

        <div class="col-lg-12">

            <h2 class="about-h">News</h2>


        </div>


        <div class="col-lg-12">

            <h3 class="about-h">News Statistics</h3>

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
                News
            </h3>

            

                <div class="table-responsive">
                    <table class="table table-striped table-sm ">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Title</th>
                                <th scope="col">Description</th>
                                <th scope="col">Publish Date</th>
                            </tr>
                        </thead>
                        <tbody>

                            <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Title") %></td>
                                        <td><%#Eval("Description") %></td>
                                        <td><%#Eval("PublishDate") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                            

                        </tbody>

                    </table>

                </div>
            

        </div>







    </div>

</asp:Content>
