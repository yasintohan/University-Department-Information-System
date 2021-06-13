<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="People.aspx.cs" Inherits="UniversitySystem.Admin.People" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>People - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="about-h">People</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>People List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Image</th>
                    <th scope="col">Name Surname</th>
                    <th scope="col">Degree</th>
                    <th scope="col">Mail</th>
                    <th scope="col">Tel</th>
                    <th scope="col">Username</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>
                 <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <th scope="row"><%#Eval("Id") %></th>
                                        <td><img class="img-responsive" width="50px" height="50px" src="<%#Eval("Image") %>" alt=""></td>
                                        <td><%#Eval("Name") %></td>
                                        <td><%#Eval("Degree") %></td>
                                        <td><%#Eval("Mail") %></td>
                                        <td><%#Eval("Tel") %></td>
                                        <td><%#Eval("username") %></td>
                                        <td>
                                            <a href="<%#HttpContext.Current.Request.Url.AbsoluteUri %>?delete=<%#Eval("Id") %>" class="btn btn-danger btn-xs delete_button" ><i class="glyphicon glyphicon-trash"></i></a>

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
                <legend>People Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Name</label>
                        <asp:TextBox ID="nameTxt" runat="server" placeholder="Name" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>

                    <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Degree</label>
                        <asp:TextBox ID="degreeTxt" runat="server" placeholder="" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>


                                 <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Image</label>
                        <asp:FileUpload ID="imageupload" runat="server" accept=".png,.jpg,.jpeg,.gif" class="form-control input-md"/>

                </div>

                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Mail</label>
                        <asp:TextBox ID="mailTxt" runat="server" placeholder="" class="form-control input-md" TextMode="Email"></asp:TextBox>
                        
                    
                </div>
                
                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Tel</label>
                        <asp:TextBox ID="telTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                        
                    
                </div>

                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">User Id</label>
                        <asp:TextBox ID="userTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                        
                    
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
