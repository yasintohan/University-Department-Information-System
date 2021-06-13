<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="UniversitySystem.Department.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Contact - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    
<div class="row people" style="margin-top:20px">

    <div class="col-lg-12">

        <h2 class="about-h">Contact</h2>

        <strong>Postal Address:</strong><br />
         <asp:ListView runat="server" ID="lstContact">
             <ItemTemplate>
       

            <address>
               <p><%#Eval("AdressC") %></p><br />
                <abbr title="Phone">Tel:</abbr>
                <p><%#Eval("TelC") %></p><br />
                <abbr title="Phone">Fax:</abbr>
               <p><%#Eval("FaxC") %></p>
            </address>

            <address>
                <strong>Department e-mail address:</strong>   <a href="mailto:<%#Eval("MailC") %>"><%#Eval("MailC") %></a><br />
                <strong>Facebook:</strong> <a href="<%#Eval("Facebook") %>"><%#Eval("Facebook") %></a><br />
                <strong>Twitter:</strong> <a href=<%#Eval("Twitter") %>"><%#Eval("Twitter") %></a><br />
                <strong>LinkedIn:</strong> <a href="<%#Eval("Linkedin") %>"><%#Eval("Linkedin") %></a><br />
                <strong>Youtube:</strong> <a href="<%#Eval("Youtube") %>"><%#Eval("Youtube") %></a><br />
            </address>
            
        
         </ItemTemplate>
         </asp:ListView>
    </div>






</div>



</asp:Content>
