<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="People.aspx.cs" Inherits="UniversitySystem.Department.People" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    
<div class="row people" style="margin-top:20px">

    <div class="col-lg-12">

        <h2 class="about-h">People</h2>

    </div>





     <asp:ListView runat="server" ID="lstPeople">
             <ItemTemplate>
        <div class="col-sm-6 col-md-3 col-lg-2 single-team">
            <div class="inner">
                
                    <div class="team-img">

                        <img src="<%#Eval("Image") %>" alt="@x.Name">

                    </div>
                
                <div class="team-content">
                    <h4><%#Eval("Name") %></h4>
                    <h5 style="min-height:50px"><%#Eval("Degree") %></h5>
                    <div class="team-social">
                        <a href="mailto:<%#Eval("Mail") %>" class="fa fa-envelope"></a>
                        <a href="tel:<%#Eval("Tel") %>" class="fa fa-phone"></a>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
         </asp:ListView>








</div>




</asp:Content>
