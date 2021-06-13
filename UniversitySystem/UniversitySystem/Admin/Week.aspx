<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Week.aspx.cs" Inherits="UniversitySystem.Admin.Week" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Course Weeks - ESTU ADMIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

        <h2 class="about-h">Course Weeks</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Week List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Description</th>
                    <th scope="col">Document</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>
                
                <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id") %></td>
                                        <td><%#Eval("Description") %></td>
                                        <td><%#Eval("document_name") %></td>
                                        <td>
                                         <a href="<%#HttpContext.Current.Request.Url.AbsoluteUri %>&delete=<%#Eval("Id") %>" class="btn btn-danger btn-xs delete_button" ><i class="glyphicon glyphicon-trash"></i></a>

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
                <legend>Week Adding Form</legend>

                <div class="col-lg-4 col-md-6 col-sm-12 col-centered">
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Description</label>
                        <asp:TextBox ID="descTxt" runat="server" placeholder="Description" class="form-control input-md" TextMode="MultiLine"></asp:TextBox>

                    
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label">Documents</label>
                         <asp:FileUpload ID="folderUpload" runat="server" class="form-control input-md"/>
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
