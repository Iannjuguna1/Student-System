<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sign up1.aspx.cs" Inherits="CSC__301_project.sign_up1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="Scripts/WebForms/sweetalert2.all.js" type="text/javascript"></script> 
    <script>
        function alertme() {
            Swal.fire(
                'SUCCESSFUL SIGN UP!',
                'Please Log in!',
                'success'
            )
        }
        function alertme1() {
            Swal.fire({
                icon: 'error',
                title: 'Student Already Exists with this Student ID.',
                text: 'Please log in!',
                footer: '<a href="Help1.aspx">Why do I have this issue?</a>'
            })
        }
        function alertme2() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Something went wrong!',
                footer: '<a href="">Why do I have this issue?</a>'
            })
        }

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="container">
        <div class="row">
            <div class="col-md-9 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <img width="150px" src="pictures/user.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h2>STUDENT REGISTRATION</h2>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                  <asp:Label ID="Label9" runat="server"  Font-Size="Large" Text="Label">Student ID</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Student ID" TextMode="Email"></asp:TextBox> 
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                       ControlToValidate="Textbox1"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="[a-zA-Z0-9]+@anu.ac.ke" >
                                   </asp:RegularExpressionValidator>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your StudentID" ControlToValidate="Textbox1">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>
                            </div>

                             <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Label">Date of Birth</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth " TextMode="Date"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Date of Birth" ControlToValidate="Textbox2">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                  <asp:Label ID="Label11" runat="server"  Font-Size="Large" Text="Label">Full Name</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox> 
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                       ControlToValidate="Textbox3"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="^[a-zA-Z ]*$">
                                  </asp:RegularExpressionValidator>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your full name" ControlToValidate="Textbox3">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>
                            </div>

                             <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label12" runat="server"  Font-Size="Large" Text="Label">Program</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Program"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                       ControlToValidate="Textbox4"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="^[a-zA-Z ]*$">
                                  </asp:RegularExpressionValidator>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Program" ControlToValidate="Textbox4">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                  <asp:Label ID="Label13" runat="server"  Font-Size="Large" Text="Label">Contact</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact" TextMode="Phone"></asp:TextBox> 
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                       ControlToValidate="Textbox5"
                                        ErrorMessage="Enter the correct length of 10." ForeColor="Red"
                                        ValidationExpression=^[0-9]{10}$>
                                   </asp:RegularExpressionValidator>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your contact" ControlToValidate="Textbox5">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>
                            </div>

                             <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label14" runat="server"  Font-Size="Large" Text="Label">Password</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                       ControlToValidate="Textbox6"
                                        ErrorMessage="Enter the correct length of 5." ForeColor="Red"
                                        ValidationExpression=^[0-9a-zA-Z\\W]{5}$>
                                   </asp:RegularExpressionValidator>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Password" ControlToValidate="Textbox6">
                                     </asp:RequiredFieldValidator>
                                     
                               </div>
                            </div>
                        </div>
                        
                                <div class="form-group">
                                     <asp:Button class="btn btn-info btn btn-block" ID="Button2" OnClick="Button2_Click" runat="server" Text="Sign Up" />
                            </div> 

                        

                       </div>
                      
       </div>
            </div>
            </div>

           <hr />
</asp:Content>
