<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="SeniorProjects.aspx.cs" Inherits="UniversitySystem.Admin.SeniorProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Senior Projects - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    
    <h2 class="about-h">Senior Projects</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Projects List</legend>
    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Student</th>
                    <th scope="col">Title</th>
                    <th scope="col">Date</th>
                    <th scope="col">Supervisor</th>
                    <th scope="col">Crud</th>
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
                                        <td>
                                              <asp:LinkButton ID="DelButton" OnClick="DelButton_Click" runat="server" class="btn btn-danger btn-xs delete_button" commandargument='<%#Eval("project_id") %>'><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>

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
                <legend>Projects Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">

                       <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Student Name</label>
                        <asp:TextBox ID="studentTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                        
                    
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Title</label>
                        <asp:TextBox ID="titleTxt" runat="server" placeholder="Title" class="form-control input-md"></asp:TextBox>
                        <span class="help-block">E.g: University Department Information System</span>
                        
                    
                </div>

                    <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Date</label>
                        <asp:TextBox ID="dateTxt" runat="server" placeholder="1" class="form-control input-md" TextMode="Date"></asp:TextBox>
                        
                    
                </div>

                   
                
                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Supervisor Id</label>
                        <asp:TextBox ID="supervisorTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
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
