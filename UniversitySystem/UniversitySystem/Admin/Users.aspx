<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="UniversitySystem.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Users - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

     <h2 class="about-h">Users</h2>

        <div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Users List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Role</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>
                 <asp:ListView runat="server" ID="listUser">
                                <ItemTemplate>
                                    <tr>
                                        <th scope="row"><%#Eval("user_id") %></th>
                                        <td><%#Eval("username") %></td>
                                        <td><%#Eval("role") %></td>
                                        <td>
                                         <a href="<%#HttpContext.Current.Request.Url.AbsoluteUri %>?delete=<%#Eval("user_id") %>" class="btn btn-danger btn-xs delete_button" ><i class="glyphicon glyphicon-trash"></i></a>

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
                <legend>User Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Username</label>
                        <asp:TextBox ID="usernameTxt" runat="server" placeholder="Username" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>

                    <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Password</label>
                        <asp:TextBox ID="PasswordTxt" runat="server" placeholder="" class="form-control input-md"></asp:TextBox>
                        
                    
                </div>

                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Role</label>
                        <asp:TextBox ID="roleTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                     <span class="help-block">Admin or Student</span>
                </div>
                  
                

                

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="control-label" for="addBtn"></label>
                        <asp:Button ID="addUserBtn" OnClick="addUserBtn_Click" runat="server" Text="Add" class="btn btn-success"/>
                        <button type="reset" id="clearBtn" name="clearBtn" class="btn btn-danger">Clear</button>
                </div>
                </div>
            
        </form>

    </div>

</asp:Content>
