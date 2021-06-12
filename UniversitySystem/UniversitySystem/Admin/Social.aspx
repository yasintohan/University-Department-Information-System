<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Social.aspx.cs" Inherits="UniversitySystem.Admin.Social" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



     <h2 class="about-h">Social Icons</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Social Icons List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Icon</th>
                    <th scope="col">Icon Name</th>
                    <th scope="col">Link</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>

                <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><i class="fa fa-<%#Eval("IconName") %>"></i></td>
                                        <td><%#Eval("IconName") %></td>
                                        <td><%#Eval("Link") %></td>
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
                <legend>Social Icons Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Icon Name</label>
                        <asp:TextBox ID="iconNameTxt" runat="server" placeholder="Icon Name" class="form-control input-md" required=""></asp:TextBox>
                        <span class="help-block">E.g: facebook</span>
                        <span class="help-block">https://fontawesome.com/icons</span>
                    
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Link</label>
                        <asp:TextBox ID="linkTxt" runat="server" placeholder="https://orneklink.com/" class="form-control input-md" required=""></asp:TextBox>
                        <span class="help-block">E.g: https://twitter.com/</span>
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
