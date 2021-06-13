<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Offices.aspx.cs" Inherits="UniversitySystem.Admin.Offices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Offices - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

       <h2 class="about-h">Offices</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Office List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Floor</th>
                    <th scope="col">Meeting Room</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>

                <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Name") %></td>
                                        <td><%#Eval("Floor") %></td>
                                        <td><%#Eval("MeetingRoom") %></td>
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
                <legend>Office Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Name</label>
                        <asp:TextBox ID="nameTxt" runat="server" placeholder="Name" class="form-control input-md" required=""></asp:TextBox>
                        <span class="help-block">E.g: Office 1</span>
                        
                    
                </div>

                    <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Floor</label>
                        <asp:TextBox ID="floorTxt" runat="server" placeholder="1" class="form-control input-md" required=""></asp:TextBox>
                        <span class="help-block">E.g: 1</span>
                        
                    
                </div>

                    <!-- Text input-->
                <div class="form-group">
                    
                        <asp:CheckBox ID="meetingCheck" runat="server"/> <label class="control-label">Meeting Room</label>
                        
                    
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
