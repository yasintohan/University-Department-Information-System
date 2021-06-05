<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PeoplePage.aspx.cs" Inherits="UniversitySystem.Department.PeoplePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    @foreach (var x in Model)
{
    <h2> @x.Name </h2>
    <h2> @x.Mail </h2>
}


</asp:Content>
