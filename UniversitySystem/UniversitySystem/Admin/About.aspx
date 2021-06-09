<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UniversitySystem.Admin.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



    
       <h2 class="about-h">About Page</h2>




    <div class="col-lg-12 form-bg">


                

                <div class="form-horizontal">
            

                <!-- Form Name -->
                    <legend>About Page Edit</legend>
                    
                    <asp:Button ID="getDataBtn" OnClick="getDataBtn_Click" runat="server" Text="Get Data" class="btn btn-success"/>

                    <div class="col-lg-6 col-md-6 col-sm-12 col-centered">
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Description</label>
                            <asp:TextBox ID="descText" runat="server" placeholder="Area" class="form-control input-md"  TextMode="MultiLine"></asp:TextBox>
                           
                        
                    
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Mission</label>
                            <asp:TextBox ID="MissionTxt" runat="server" placeholder="Area" class="form-control input-md"   TextMode="MultiLine"></asp:TextBox>
                            
                        
                    
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Vision</label>
                            <asp:TextBox ID="VisionTxt" runat="server" placeholder="Area" class="form-control input-md"  TextMode="MultiLine"></asp:TextBox>
                            
                        
                    
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Core Values</label>
                            <asp:TextBox ID="CoreValues" runat="server" placeholder="Area" class="form-control input-md"  TextMode="MultiLine"></asp:TextBox>
                            
                        
                    
                    </div>
                

                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="control-label" for="updateAboutBtn"></label>
                            <asp:Button ID="updateAboutBtn" OnClick="updateAboutBtn_Click" runat="server" Text="Update" class="btn btn-success"/>
                           

                    </div>
                    </div>
            
                </div>
        
                
        
        

    </div>
        



</asp:Content>
