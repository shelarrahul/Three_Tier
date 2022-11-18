<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="InterTask_Three.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title></title>
    <script type="text/javascript">
        function userValid() {
            debugger;
            var name, mobile, gmail, password,password2, gender, emailExp;
            name = document.getElementById("TextBox1").value;
            mobile = document.getElementById("TextBox3").value;
            var length = document.getElementById("TextBox3").value.length;
            gmail = document.getElementById("TextBox4").value;
            password = document.getElementById("Password1").value;
            password1 = document.getElementById("Password2").value;
            gender = document.getElementById("RadioButtonList1").value;
            emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id 
            var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/; 

            if (name == ''||  mobile == '' || gmail == '' || password == '' || password2 == '' || gender == '') {
                swal("Enter All Field")
                return false;
            }
            if (name == '') {
                swal("Enter Name Field")
                return false;
            }
            if (mobile == '') {
                alert("Enter mobile number")
                return false; 
            }
            if ((length != 10)) {
                alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
                return false;
            }
             
            if (gmail == '') {
                alert("Enter gmail Field")
                return false;
            }
            if (!gmail.match(emailExp)) { 
                    alert("Invalid Email Id");
                return false;
        }
            
            if (password == '') {
                alert("Enter Password Field")
                return false;
            } 
            if (!password.match(passw)) {
                alert("Invalid password")
                return false;
            }
            if (password2 == '') {
                alert("Enter Password Field")
                return false;
            }
            if (password.match(password1)) {
                alert("Password not match")
                return false;
            }

            if (gender == '') {
                alert("Select Gender")
                return false;
            }
           

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-2">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/user%20(1).png" />
                                    </center>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h2>Registration Form</h2>
                                        </center>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <center>
                                                <hr />
                                            </center>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Name" ValidationGroup="regi"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" TextMode="Phone" CssClass="form-control" placeholder="Mobile Number" ValidationGroup="regi"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" CssClass="form-control" placeholder="G-mail" ValidationGroup="regi"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <input id="Password1" type="password" runat="server" validationgroup="regi" class="form-control" placeholder="password" /></div>
                                            <div class="mb-3">
                                                <input id="Password2" type="password" runat="server" class="form-control" placeholder="re-password" validationgroup="regi" /></div>
                                            <div class="mb-3 d-flex align-items-center">
                                                <asp:Label CssClass="me-4" ID="Label1" runat="server" Text="Select Gender"></asp:Label>
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="d-flex align-items-center" placeholder="Select Gender" ValidationGroup="regi" RepeatDirection="Horizontal">
                                                    <asp:ListItem class="me-3">male</asp:ListItem>
                                                    <asp:ListItem class="me-3">female</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-center">
                                                <div class="mb-3 d-grid gap-2 me-3">
                                                    <asp:Button ID="Button3" runat="server" Text="Submit" CssClass="btn btn-primary px-3" OnClick="Button1_Click" ValidationGroup="regi" OnClientClick="return userValid(); " />
                                                </div>
                                                <div class="mb-3 d-grid gap-2">
<%--                                                    <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-dark px-3" OnClientClick="this.form.reset();return false;" CausesValidation="false" ValidationGroup="regi" />--%>
                                                </div>
                                                <div class="mb-3 d-grid gap-2" style="margin-left: 14px">
<%--                                                    <asp:Button ID="Button1" runat="server" Text="BackToLogin" CssClass="btn btn-dark px-3" CausesValidation="false" ValidationGroup="regi" OnClick="Button1_Click2" />--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </form>
</body>
</html>
