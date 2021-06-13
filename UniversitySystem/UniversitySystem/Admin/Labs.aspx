<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Labs.aspx.cs" Inherits="UniversitySystem.Admin.Labs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Labs - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


            
    <h2 class="about-h">Labs</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Labs List</legend>
    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Description</th>
                    <th scope="col">Floor</th>
                    <th scope="col">Computer</th>
                    <th scope="col">Projector</th>
                    <th scope="col">Blackboard</th>
                    <th scope="col">AirConditioner</th>
                    <th scope="col">Image</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>

                 <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Description") %></td>
                                        <td><%#Eval("Floor") %></td>
                                        <td><%#Eval("Computer") %></td>
                                        <td><%#Eval("Projector") %></td>
                                        <td><%#Eval("Blackboard") %></td>
                                        <td><%#Eval("AirConditioner") %></td>
                                        <td><img class="img-responsive" width="50px" height="50px" src="<%#Eval("Image") %>" alt=""></td>
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
                <legend>Labs Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Description</label>
                        <asp:TextBox ID="Description" runat="server" placeholder="Description" class="form-control input-md"></asp:TextBox>
                        <span class="help-block">E.g: Lab 1</span>

                </div>

                       <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Floor</label>
                        <asp:TextBox ID="Floor" runat="server" placeholder="1" class="form-control input-md"></asp:TextBox>

                </div>
                
                        <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Computer</label>
                        <asp:TextBox ID="Computer" runat="server" placeholder="10" class="form-control input-md"></asp:TextBox>

                </div>

                         <!-- Text input-->
                <div class="form-group">
                          <asp:CheckBox ID="Projector" runat="server"/> <label class="control-label">Projector</label>

                </div>
                        <!-- Text input-->
                <div class="form-group">
                          <asp:CheckBox ID="Blackboard" runat="server"/> <label class="control-label">Blackboard</label>

                </div>
                        <!-- Text input-->
                <div class="form-group">
                          <asp:CheckBox ID="AirConditioner" runat="server"/> <label class="control-label">AirConditioner</label>

                </div>
                

                           <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Image</label>
                        </asp:TextBox><asp:FileUpload ID="imageupload" runat="server" accept=".png,.jpg,.jpeg,.gif" class="form-control input-md"/>

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
