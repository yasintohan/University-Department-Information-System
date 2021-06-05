<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResearchAreas.aspx.cs" Inherits="UniversitySystem.Research.ResearchAreas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="col-lg-12">

    <h2 class="about-h">@ViewBag.Title</h2>

    <ul>
        @foreach (var x in Model)
        {
        <li>@x.Area</li>
        }
        

    </ul>


</div>



</asp:Content>
