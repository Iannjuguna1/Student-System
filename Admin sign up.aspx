<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin sign up1.aspx.cs" Inherits="CSC__301_project.Admin_sign_up1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="Scripts/WebForms/sweetalert2.all.js" type="text/javascript"></script> 
    <script>
        function alertme() {
            Swal.fire(
                'SUCCESSFUL SIGN UP!',
                'You have registered a new Admin!',
                'success'
            )
        }
        function alertme1() {
            Swal.fire({
                icon: 'error',
                title: 'Admin Already Exists.',
                text: 'Try other ID!',
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
                                    <h3>ADMIN REGISTRATION</h3>
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
                                  <asp:Label ID="Label9" runat="server" Text="Label">Admin ID</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" TextMode="Email"></asp:TextBox> 
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                       ControlToValidate="Textbox1"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="[a-zA-Z0-9]+@anu.ac.ke" >
                                   </asp:RegularExpressionValidator>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your AdminID" ControlToValidate="Textbox1">
                                     </asp:RequiredFieldValidator>
                                     
                               </div><br />
                            </div>

                             <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label10" runat="server" Text="Label">Name</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name" ></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                       ControlToValidate="Textbox2"
                                        ErrorMessage="Enter the correct format." ForeColor="Red"
                                        ValidationExpression="^[a-zA-Z ]*$" >
                                  </asp:RegularExpressionValidator>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Name" ControlToValidate="Textbox2">
                                     </asp:RequiredFieldValidator>
                                     
                               </div><br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                  <asp:Label ID="Label11" runat="server" Text="Label">contact</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="contact"></asp:TextBox> 
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                       ControlToValidate="Textbox3"
                                        ErrorMessage="Enter the correct length of 10." ForeColor="Red"
                                        ValidationExpression=^[0-9]{10}$ >
                                   </asp:RegularExpressionValidator>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Contact" ControlToValidate="Textbox3">
                                     </asp:RequiredFieldValidator>
                                     
                               </div><br />
                            </div>

                             <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label12" runat="server" Text="Label">Password</asp:Label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Enter yourPassword" TextMode="Password"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                       ControlToValidate="Textbox4"
                                        ErrorMessage="Enter the correct length of 6." ForeColor="Red"
                                        ValidationExpression=^[0-9a-zA-Z\\W]{6}$>
                                   </asp:RegularExpressionValidator>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red"  runat="server" 
                                         ErrorMessage="Please Enter your Password" ControlToValidate="Textbox4">
                                     </asp:RequiredFieldValidator>
                                     
                                     </div>
                            </div>
                        </div>

                                <div class="form-group">
                                 
                                    <a> <asp:Button class="btn btn-info btn btn-block" ID="Button2"  OnClick="Button2_Click"  runat="server" Text="Sign Up" /></a>
                                
                               </div>
                              
                            </div>
                        </div>  
                  </div>             
             </div>
       </div>
           
           <hr />
</asp:Content>
