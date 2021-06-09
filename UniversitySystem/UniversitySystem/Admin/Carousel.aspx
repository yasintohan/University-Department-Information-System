<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Carousel.aspx.cs" Inherits="UniversitySystem.Admin.Carousel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


       
       <h2 class="about-h">Carousels</h2>




    <div class="col-lg-12 form-bg">


                

                <div class="form-horizontal">
            

                <!-- Form Name -->
                    <legend>Carousels Edit</legend>
                    
                    <asp:Button ID="getDataBtn" OnClick="getDataBtn_Click" runat="server" Text="1" class="btn btn-success"/>
                    <asp:Button ID="getDataBtn2" OnClick="getDataBtn_Click" runat="server" Text="2" class="btn btn-success"/>
                    <asp:Button ID="getDataBtn3" OnClick="getDataBtn_Click" runat="server" Text="3" class="btn btn-success"/>
                    <asp:Button ID="getDataBtn4" OnClick="getDataBtn_Click" runat="server" Text="4" class="btn btn-success"/>

                    <div class="col-lg-6 col-md-6 col-sm-12 col-centered">
                    <!-- Text input-->

                    <div class="form-group">
                        <label class="control-label">Id</label>
                            
                            <asp:Label ID="IdLabel" runat="server" Text="" class="form-control input-md"></asp:Label>
                        
                    
                    </div>


                    <div class="form-group">
                        <label class="control-label">Title</label>
                            <asp:TextBox ID="TitleTxt" runat="server" placeholder="Area" class="form-control input-md" ></asp:TextBox>
                           
                        
                    
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">SubTitle</label>
                            <asp:TextBox ID="SubTitleTxt" runat="server" placeholder="Area" class="form-control input-md" ></asp:TextBox>
                            
                        
                    
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Description</label>
                            <asp:TextBox ID="DescriptionTxt" runat="server" placeholder="Area" class="form-control input-md"  TextMode="MultiLine"></asp:TextBox>
                            
                        
                    
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">MiniTitle</label>
                            <asp:TextBox ID="MiniTitleTxt" runat="server" placeholder="Area" class="form-control input-md"  ></asp:TextBox>
                            
                        
                    
                    </div>
                

                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="control-label" for="updateAboutBtn"></label>
                            <asp:Button ID="updateBtn" OnClick="updateBtn_Click" runat="server" Text="Update" class="btn btn-success"/>
                           

                    </div>
                    </div>
            
                </div>
        
                
        
        

    </div>
        


</asp:Content>
