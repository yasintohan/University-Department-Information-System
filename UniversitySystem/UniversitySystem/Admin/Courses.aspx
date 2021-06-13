<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="UniversitySystem.Admin.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Courses - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

   
    <h2 class="about-h">Courses</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Courses List</legend>
    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Name</th>
                    <th scope="col">Course Book</th>
                    <th scope="col">Grading</th>
                    <th scope="col">Instructor</th>
                    <th scope="col">Assistan</th>
                    <th scope="col">Pages</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>

                 <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Name") %></td>
                                        <td><%#Eval("CourseBook") %></td>
                                        <td><%#Eval("Grading") %></td>
                                        <td><%#Eval("Instructor") %></td>
                                        <td><%#Eval("assistan") %></td>
                                        <td>
                                            <a href="../Admin/Week.aspx?id=<%#Eval("Id") %>" class="btn btn-primary btn-xs" >Weeks</a>
                                            <a href="../Admin/CourseAnnounces.aspx?id=<%#Eval("Id") %>" class="btn btn-info btn-xs" >Announces</a>
                                            <a href="../Admin/CourseAssignments.aspx?id=<%#Eval("Id") %>" class="btn btn-success btn-xs" >Assignments</a>
                                        </td>
                                        <td>
                                            <a href="<%#HttpContext.Current.Request.Url.AbsoluteUri %>?delete=<%#Eval("Id") %>" class="btn btn-danger btn-xs" ><i class="glyphicon glyphicon-trash"></i></a>

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
                <legend>Courses Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Name</label>
                        <asp:TextBox ID="nameTxt" runat="server" placeholder="Name" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>

                     <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Course Book</label>
                        <asp:TextBox ID="CourseBook" runat="server" placeholder="Course Book" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>

                     <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Grading</label>
                        <asp:TextBox ID="Grading" runat="server" placeholder="Grading" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>

                       <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Instructor</label>
                        <asp:TextBox ID="Instructor_Id" runat="server" placeholder="1" class="form-control input-md"></asp:TextBox>
                        <span class="help-block">Id from People Table</span>
                    
                </div>

                          <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Assistan</label>
                        <asp:TextBox ID="Assistan" runat="server" placeholder="1" class="form-control input-md"></asp:TextBox>
                        <span class="help-block">Id from People Table</span>
                    
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
