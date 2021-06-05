﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="People.aspx.cs" Inherits="UniversitySystem.Admin.People" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="about-h">People</h2>


<div class="col-lg-12 form-bg">

    <!-- Form Name -->
    <legend>People List</legend>


    <div class="table-responsive">
        <table class="table table-striped table-sm ">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Image</th>
                    <th scope="col">Name Surname</th>
                    <th scope="col">Degree</th>
                    <th scope="col">Mail</th>
                    <th scope="col">Tel</th>
                    <th scope="col">Crud</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td><img class="img-responsive" width="50px" height="50px" src="https://ceng.eskisehir.edu.tr/img/aarslan2.jpg" alt=""></td>
                    <td>Yasin Tohan</td>
                    <td>Degree</td>
                    <td>Mail</td>
                    <td>Tel</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td><img class="img-responsive" width="50px" height="50px" src="https://ceng.eskisehir.edu.tr/img/aarslan2.jpg" alt=""></td>
                    <td>Yasin Tohan</td>
                    <td>Degree</td>
                    <td>Mail</td>
                    <td>Tel</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td><img class="img-responsive" width="50px" height="50px" src="https://ceng.eskisehir.edu.tr/img/aarslan2.jpg" alt=""></td>
                    <td>Yasin Tohan</td>
                    <td>Degree</td>
                    <td>Mail</td>
                    <td>Tel</td>
                    <td>
                        <button id="36" type="button" class="btn btn-info btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-info-sign"></i></button>
                        <button id="36" type="button" class="btn btn-warning btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-edit"></i></button>
                        <button id="36" type="button" class="btn btn-danger btn-xs delete_button" data-toggle="modal" data-target="#delmodal"><i class="glyphicon glyphicon-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td><img class="img-responsive" width="50px" height="50px" src="https://ceng.eskisehir.edu.tr/img/aarslan2.jpg" alt=""></td>
                    <td>Yasin Tohan</td>
                    <td>Degree</td>
                    <td>Mail</td>
                    <td>Tel</td>
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
                <legend>People Adding Form</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="nameInput">Name &amp; Surname</label>
                    <div class="col-md-4">
                        <input id="nameInput" name="nameInput" type="text" placeholder="Name Surname" class="form-control input-md" required="">
                        <span class="help-block">E.g: Yasin Tohan</span>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="degreeInput">Degree</label>
                    <div class="col-md-4">
                        <input id="degreeInput" name="degreeInput" type="text" placeholder="Degree" class="form-control input-md" required="">
                        <span class="help-block">E.g: Head of Department</span>
                    </div>
                </div>

                <!-- File Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="imageBtn">Image</label>
                    <div class="col-md-4">
                        <input id="imageBtn" name="imageBtn" class="input-file" type="file">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="mailInput">Mail</label>
                    <div class="col-md-4">
                        <input id="mailInput" name="mailInput" type="text" placeholder="Mail" class="form-control input-md" required="">
                        <span class="help-block">E.g: jhondao@mail.com</span>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="telInput">Tel</label>
                    <div class="col-md-4">
                        <input id="telInput" name="telInput" type="text" placeholder="Tel" class="form-control input-md" required="">

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
