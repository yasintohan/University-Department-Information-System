<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="UniversitySystem.Educational.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Course - ESTU</title>
    <style>
        .infolist{
           list-style:none;
            margin:0;
            padding:0;
            width:100%;
        }
        .infolist li{
           font-size:16px;
            width:100%;
        }

        .infoitem{
            font-weight:bold;
            display:inline-block;
            width:20%;
        }

          .panel-group .panel {
        border-radius: 0;
        box-shadow: none;
        border-color: #EEEEEE;
    }

    .panel-default > .panel-heading {
        padding: 0;
        border-radius: 0;
        color: #212121;
        background-color: #FAFAFA;
        border-color: #EEEEEE;
    }

    .panel-title {
        font-size: 14px;
    }

    .panel-title > a {
        display: block;
        padding: 15px;
        text-decoration: none;
    }

    .more-less {
        float: right;
        color: #212121;
    }

    .panel-default > .panel-heading + .panel-collapse > .panel-body {
        border-top-color: #EEEEEE;
    }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



    <div class="row" style="margin-top:20px;">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#tab1default" data-toggle="tab">Course Info</a></li>
                <li><a href="#tab2default" data-toggle="tab">Announcements</a></li>
                <li><a href="#tab3default" data-toggle="tab">Assignments</a></li>
            </ul>
        </div>
        <div class="col-md-9">
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1default">

                        <ul class="infolist">
                            <li><span class="infoitem">Instructor:</span><asp:Label ID="Instructor" runat="server" Text=""></asp:Label></li>
                            <li><span class="infoitem">Teaching Assistant:</span><asp:Label ID="Assistant" runat="server" Text=""></asp:Label></li>
                            <li><span class="infoitem">Course Book:</span><asp:Label ID="Book" runat="server" Text=""></asp:Label></li>
                            <li><span class="infoitem">Grading:</span><asp:Label ID="Grading" runat="server" Text=""></asp:Label></li>

                        </ul>

                        <br />

                          <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                              <asp:ListView runat="server" ID="weeklist">
                                  <ItemTemplate>
                                      <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<%#Container.DisplayIndex + 1 %>" aria-expanded="true" aria-controls="collapseOne">
                                                    <i class="more-less glyphicon glyphicon-plus"></i>
                                                    Week <%#Container.DisplayIndex + 1 %>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse<%#Container.DisplayIndex + 1 %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                  <%#Eval("Description") %>
                                                 <a href="<%#Eval("[Document]") %>"><%#Eval("document_name") %></a>
                                            </div>
                                        </div>
                                    </div>
                                  </ItemTemplate>
                              </asp:ListView>

                        </div><!-- panel-group -->


                    </div>
                    <div class="tab-pane fade" id="tab2default">
                         <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">

                              <asp:ListView runat="server" ID="announceList">
                                  <ItemTemplate>
                                      <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#announce<%#Container.DisplayIndex + 1 %>" aria-expanded="true" aria-controls="collapseOne">
                                                    <i class="more-less"><%#Eval("PublishDate") %></i>
                                                   <%#Eval("Title") %>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="announce<%#Container.DisplayIndex + 1 %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                  <%#Eval("Description") %>
                                            </div>
                                        </div>
                                    </div>
                                  </ItemTemplate>
                              </asp:ListView>

                        </div><!-- panel-group -->


                    </div>
                    <div class="tab-pane fade" id="tab3default">

                         <div class="panel-group" id="accordion3" role="tablist" aria-multiselectable="true">

                              <asp:ListView runat="server" ID="taskList">
                                  <ItemTemplate>
                                      <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#task<%#Container.DisplayIndex + 1 %>" aria-expanded="true" aria-controls="collapseOne">
                                                    <i class="more-less"><%#Eval("PublishDate") %></i>
                                                    <%#Eval("Title") %>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="task<%#Container.DisplayIndex + 1 %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                  <p><%#Eval("Description") %></p>
                                                    <a href="<%#Eval("[Document]") %>"><%#Eval("document_name") %></a>
                                                    <p><b>Finish Date:</b><%#Eval("FinishDate") %></p>
                                            </div>
                                        </div>
                                    </div>
                                  </ItemTemplate>
                              </asp:ListView>

                        </div><!-- panel-group -->
                    </div>

                 </div>
        </div>
    </div>


</asp:Content>
