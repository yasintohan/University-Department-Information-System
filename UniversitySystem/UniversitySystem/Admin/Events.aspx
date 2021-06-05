<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="UniversitySystem.Admin.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <h2 class="about-h">Events</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>Events List</legend>
    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Event Title</th>
                    <th scope="col">Date</th>
                    <th scope="col">Place</th>
                    <th scope="col">Participants</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Erasmus+ meeting with outgoing students</td>
                    <td>17.10.2016 11:45</td>
                    <td>Meeting Room</td>
                    <td>12</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Erasmus+ meeting with outgoing students</td>
                    <td>17.10.2016 11:45</td>
                    <td>Meeting Room</td>
                    <td>12</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Erasmus+ meeting with outgoing students</td>
                    <td>17.10.2016 11:45</td>
                    <td>Meeting Room</td>
                    <td>12</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Erasmus+ meeting with outgoing students</td>
                    <td>17.10.2016 11:45</td>
                    <td>Meeting Room</td>
                    <td>12</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>


            </tbody>

        </table>

    </div>



</div>



<div class="col-lg-12 form-bg">



    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>Event Adding Form</legend>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="titleInput">Title</label>
                <div class="col-md-4">
                    <input id="titleInput" name="titleInput" type="text" placeholder="Title" class="form-control input-md" required="">
                    <span class="help-block">E.g: Erasmus+ meeting</span>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="dateInput">Date</label>
                <div class="col-md-4">
                    <input id="dateInput" name="dateInput" type="text" placeholder="" class="form-control input-md" required="">
                    <span class="help-block">E.g: 13.05.2021</span>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="placeInput">Place</label>
                <div class="col-md-4">
                    <input id="placeInput" name="placeInput" type="text" placeholder="" class="form-control input-md" required="">
                    <span class="help-block">E.g: Meeting Room</span>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="partiInput">Participants</label>
                <div class="col-md-4">
                    <input id="partiInput" name="partiInput" type="text" placeholder="" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Button (Double) -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="addBtn"></label>
                <div class="col-md-8">
                    <button id="addBtn" name="addBtn" class="btn btn-success">Add</button>
                    <button id="clearBtn" name="clearBtn" class="btn btn-danger">Clear</button>
                </div>
            </div>

        </fieldset>
    </form>


</div>




</asp:Content>
