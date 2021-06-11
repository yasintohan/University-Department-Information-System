<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="UniversitySystem.Admin.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <h2 class="about-h">Events</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Events List</legend>
    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Event Title</th>
                    <th scope="col">Date</th>
                    <th scope="col">Place</th>
                    <th scope="col">Participants</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>

                 <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Title") %></td>
                                        <td><%#Eval("datep") %></td>
                                        <td><%#Eval("Place") %></td>
                                        <td><%#Eval("Participants") %></td>
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
                <legend>Event Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Title</label>
                        <asp:TextBox ID="titleTxt" runat="server" placeholder="Title" class="form-control input-md"></asp:TextBox>
                        <span class="help-block">E.g: Erasmus Meeting Event</span>
                        
                    
                </div>

                    <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Date</label>
                        <asp:TextBox ID="dateTxt" runat="server" placeholder="1" class="form-control input-md" TextMode="Date"></asp:TextBox>
                        
                    
                </div>

                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Place</label>
                        <asp:TextBox ID="placeTxt" runat="server" placeholder="Place" class="form-control input-md" ></asp:TextBox>
                        
                    
                </div>
                
                      <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Participants</label>
                        <asp:TextBox ID="partiTxt" runat="server" placeholder="Place" class="form-control input-md" ></asp:TextBox>
                        
                    
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
