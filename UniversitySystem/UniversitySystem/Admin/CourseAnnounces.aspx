﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="CourseAnnounces.aspx.cs" Inherits="UniversitySystem.Admin.CourseAnnounces" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Course Announces - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    
        <h2 class="about-h">Course Announces</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Announces List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Publish Date</th>
                    <th scope="col">Crud</th>
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
                                        <td>
                                         <asp:LinkButton ID="DelButton" OnClick="DelButton_Click" runat="server" class="btn btn-danger btn-xs delete_button" commandargument='<%#Eval("Id") %>'><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>

                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                
                



            </tbody>

        </table>

    </div>


</div>



    <div class="col-lg-12 form-bg">

        
        
        <form class="form-horizontal">
            

                <!-- Form Name -->
                <legend>Announces Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Title</label>
                        <asp:TextBox ID="titleTxt" runat="server" placeholder="Title" class="form-control input-md"></asp:TextBox>

                    
                </div>


                    <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Description</label>
                        <asp:TextBox ID="descTxt" runat="server" placeholder="Description" class="form-control input-md" TextMode="MultiLine"></asp:TextBox>

                    
                </div>

              <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Date</label>
                        <asp:TextBox ID="dateTxt" runat="server" placeholder="1" class="form-control input-md" TextMode="Date"></asp:TextBox>
                        
                    
                </div>

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="control-label" for="addBtn"></label>
                        <asp:Button ID="addBtn" OnClick="addBtn_Click" runat="server" Text="Add" class="btn btn-success"/>
                        <button type="reset" id="clearBtn" name="clearBtn" class="btn btn-danger">Clear</button>
                </div>
                </div>
            
        </form>

    </div>


</asp:Content>
