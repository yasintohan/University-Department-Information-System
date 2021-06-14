<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="UniversitySystem.Educational.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Courses - ESTU</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



<asp:Panel ID="Panel1" runat="server">


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

</asp:Panel>

<asp:Panel ID="Panel2" runat="server">


    <div class="col-lg-12">
    <h2 class="about-h">You can see the contents of this page after you log in.</h2>

    </div>

</asp:Panel>


</asp:Content>
