<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="ResearchAreas.aspx.cs" Inherits="UniversitySystem.Admin.ResearchAreas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



       <h2 class="about-h">Research Areas</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Research Areas List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Area</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>

                <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Area") %></td>
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
                <legend>Research Areas Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Research Area</label>
                        <asp:TextBox ID="areaTxt" runat="server" placeholder="Area" class="form-control input-md" required=""></asp:TextBox>
                        <span class="help-block">E.g: Artificial Intelligence</span>
                        
                    
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
