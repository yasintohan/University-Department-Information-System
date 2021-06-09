<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="UniversitySystem.Admin.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    
       <h2 class="about-h">Contact Page</h2>




    <div class="col-lg-12 form-bg">


                

                <div class="form-horizontal">
            

                <!-- Form Name -->
                    <legend>Contact Page Edit</legend>
                    
                    <asp:Button ID="getDataBtn" OnClick="getDataBtn_Click" runat="server" Text="Get Data" class="btn btn-success"/>

                    <div class="col-lg-6 col-md-6 col-sm-12 col-centered">
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Adress</label>
                            <asp:TextBox ID="adressText" runat="server" placeholder="" class="form-control input-md"  TextMode="MultiLine"></asp:TextBox>
                           
                        
                    
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Tel</label>
                            <asp:TextBox ID="telTxt" runat="server" placeholder="" class="form-control input-md"></asp:TextBox>
                            
                        
                    
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Fax</label>
                            <asp:TextBox ID="faxTxt" runat="server" placeholder="" class="form-control input-md"  ></asp:TextBox>
                            
                        
                    
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Mail</label>
                            <asp:TextBox ID="mailTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                            
                        
                    
                    </div>


                     <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Facebook</label>
                            <asp:TextBox ID="facebookTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                            
                        
                    
                    </div>
                
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Twitter</label>
                            <asp:TextBox ID="twitterTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                            
                        
                    
                    </div>

                     <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Linkedin</label>
                            <asp:TextBox ID="LinkedinTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                            
                        
                    
                    </div>

                     <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label">Youtube</label>
                            <asp:TextBox ID="YoutubeTxt" runat="server" placeholder="" class="form-control input-md" ></asp:TextBox>
                            
                        
                    
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
