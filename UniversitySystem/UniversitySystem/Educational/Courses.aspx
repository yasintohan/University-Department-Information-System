<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="UniversitySystem.Educational.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="col-lg-12">
    <h2 class="about-h">Undergraduate and Graduate Courseware</h2>

    <ul class="list-unstyled">
         <asp:ListView runat="server" ID="lstData">
                                <ItemTemplate>
                                    <li><a href="../Educational/Course.aspx?Id=<%#Eval("Id") %>"><%#Eval("Name") %></a></li>
                                    
                                </ItemTemplate>
                            </asp:ListView>


    </ul>

</div>




</asp:Content>
