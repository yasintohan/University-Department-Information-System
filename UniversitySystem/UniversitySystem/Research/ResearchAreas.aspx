<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResearchAreas.aspx.cs" Inherits="UniversitySystem.Research.ResearchAreas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Research Areas - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="col-lg-12">

    <h2 class="about-h">Research Areas</h2>

    <ul>
        
        <asp:ListView runat="server" ID="lstData">
            <ItemTemplate>
                <li><%#Eval("Area") %></li>
            </ItemTemplate>
        </asp:ListView>
        

    </ul>


</div>



</asp:Content>
