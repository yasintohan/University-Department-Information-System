<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="UniversitySystem.Department.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    
<div class="row people" style="margin-top:20px">

    <div class="col-lg-12">

        <h2 class="about-h">Contact</h2>

        <strong>Postal Address:</strong><br />

        @foreach (var x in Model)
        {


            <address>
                @x.Adress<br />
                <abbr title="Phone">Tel:</abbr>
                @x.Tel<br />
                <abbr title="Phone">Fax:</abbr>
                @x.Fax
            </address>

            <address>
                <strong>Department e-mail address:</strong>   <a href="mailto:@x.Mail">@x.Mail</a><br />
                <strong>Facebook:</strong> <a href="@x.Facebook">@x.Facebook</a><br />
                <strong>Twitter:</strong> <a href="@x.Twitter">@x.Twitter</a><br />
                <strong>LinkedIn:</strong> <a href="@x.Linkedin">@x.Linkedin</a><br />
                <strong>Youtube:</strong> <a href="@x.Youtube">@x.Youtube</a><br />
            </address>
            
        }

    </div>






</div>



</asp:Content>
