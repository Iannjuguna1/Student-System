<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student login1.aspx.cs" Inherits="CSC__301_project.Student_login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/WebForms/sweetalert2.all.js" type="text/javascript"></script> 
    <script>
        function alertme() {
            Swal.fire(
                'SUCCESSFUL LOGIN!',
                'You have logged in!',
                'success'
            )
        }
        function alertme1() {
            Swal.fire({
                icon: 'error',
                title: 'Incorrect Details.',
                text: 'Please try again!',
                footer: '<a href="Help1.aspx">Why do I have this issue?</a>'
            })
        }
        function alertme2() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Something went wrong!',
                footer: '<a href="Help1.aspx">Why do I have this issue?</a>'
            })
        }
        function alertme3() {
            Swal.fire({
                title: 'Sweet!',
                text: 'You have logged in!.',
                imageUrl: '<img src="pictures/wallpaper-hd-3151.jpg" /> ',
                imageWidth: 400,
                imageHeight: 200,
                imageAlt: 'Custom image',
            })
        }

    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="pictures/1218716_christmas_student_user_yuppie_icon.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h2>STUDENT LOGIN</h2>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">

                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="School ID" TextMode="Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                       ControlToValidate="Textbox1"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="[a-zA-Z0-9]+@anu.ac.ke" >
                                   </asp:RegularExpressionValidator>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your SchoolID" ControlToValidate="Textbox1">
                                     </asp:RequiredFieldValidator>

                              </div><br />
                                
                                 <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                       ControlToValidate="Textbox3"
                                        ErrorMessage="Enter the correct length of 5." ForeColor="Red"
                                        ValidationExpression=^[0-9a-zA-Z\\W]{5}$>
                                   </asp:RegularExpressionValidator>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Password" ControlToValidate="Textbox3">
                                     </asp:RequiredFieldValidator>
                                     
                               <div id="myModalSuccess" class="modal fade text-width:30px" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                        <div class="modal-header">
                                            <h2>Information</h2>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <div id="MyModalSuccessAlertBody" class="modal-body alert alert-success">
                                            This is the modal body.
                                        </div>

                                        <div class="modal-footer">
                                            &nbsp;
                                            <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>

                                 

                               
                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click"/>
                               </div>

                            
                                   <div class="form-group" id="linksign1">
                                    <a runrat="server"  style="text-decoration:none;" class="align-self-xl-center"  href="Password.aspx" >Change Password</a>                             
                            </div>   
                                   
                            

                                <div class="form-group" id="linksign">
                                    <a runrat="server"  style="text-decoration:none;" href="Sign up1.aspx">sign up</a>                             
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
           </div>
        </div>
            </div>
    </div>
            <hr />
       

        

</asp:Content>
