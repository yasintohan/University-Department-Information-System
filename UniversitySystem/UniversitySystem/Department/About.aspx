<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UniversitySystem.Department.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>About - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

     <div class="row people" style="margin-top:20px">
        
         <asp:ListView runat="server" ID="lstAbout">
             <ItemTemplate>
                 
                 <div class="col-lg-12" style="padding:20px">
            <h3 class="about-h">About Department</h3>

                <p><%#Eval("Description") %></p>
 
        </div>

        <div class="col-lg-12" style="padding:20px">
            <h3 class="about-h">Mission</h3>

                <p><%#Eval("Mission") %></p>

        </div>


        <div class="col-lg-12" style="padding:20px">
            <h3 class="about-h">Vision</h3>

                <p><%#Eval("Vision") %></p>

        </div>


        <div class="col-lg-12" style="padding:20px">
            <h3 class="about-h">Core Values</h3>

                <p><%# Eval("CoreValues")  %></p>


        </div>
             </ItemTemplate>
         </asp:ListView>

        








    </div>

</asp:Content>
