<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin login1.aspx.cs" Inherits="CSC__301_project.Admin_login1" %>
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
                                     <img width="150px" src="pictures/3018587_admin_administrator_ajax_options_permission_icon.png"/>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Admin Login</h2>
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
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" TextMode="Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                       ControlToValidate="Textbox1"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="[a-zA-Z0-9]+@anu.ac.ke" >
                                   </asp:RegularExpressionValidator>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your AdminID" ControlToValidate="Textbox1">
                                     </asp:RequiredFieldValidator>
                                     
                               </div><br />

                                 <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                       ControlToValidate="Textbox2"
                                        ErrorMessage="Enter the correct length of 6." ForeColor="Red"
                                        ValidationExpression=^[0-9a-zA-Z\\W]{6}$>
                                   </asp:RegularExpressionValidator>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Password" ControlToValidate="Textbox2">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>


                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click"/>
                               </div><br />

                                 <div class="form-group" id="linksign1">
                                    <a runrat="server"  style="text-decoration:none;" class="align-self-xl-center"  href="AdminPassword.aspx">Change Password</a>                             
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
