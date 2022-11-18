<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InterTask_Three.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%-- <script src="Index.js"></script>--%>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="Ds/log.css" rel="stylesheet" />
    
</head>
<body>

    <div class="background"></div>
    <div class="card">
         <img src="Images/login%20(1).png" class="logo" />
        <h2>LogIn</h2>
        <form class="form" runat="server" id="form1">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input"  placeholder="UserName"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input" placeholder="password" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="Button1_Click" ValidationGroup="Send" OnClientClick="return uservalid();" CssClass="button btn btn-primary" />
            <asp:LinkButton ID="LinkButton1" runat="server" href="forgetpass.aspx">ForgetPassword</asp:LinkButton>
        </form>
        <footer>
           For Register,
        <a href="register.aspx">Click here</a>
        </footer>
    </div>

    <%--<div class="login-box">
        <form id="form1" runat="server">
            <div class="container my-5">
                <div class="row">
                    <div class="col-md-6  mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <img src="Images/login%20(1).png" width="150px" />                                         
                                        </center>
                                    </div>
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
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="UserName"></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="password" CssClass="form-control"></asp:TextBox>

                                        </div>
                                        <div class="mb-3 d-grid gap-2">
                                            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ValidationGroup="Send" CssClass="btn btn-dark" />
                                        </div>
                                        <div class="mb-3 d-grid gap-2">
                                            <asp:Button ID="Button2" CssClass="btn btn-dark" runat="server" Text="Register" OnClick="Button2_Click" />
                                        </div>
                                        <div class="mb-3 d-grid gap-2">
                                            <center>
                                                <asp:LinkButton ID="LinkButton1" runat="server" href="forgetpass.aspx">ForgetPassword</asp:LinkButton>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>--%>
    <script type="text/javascript">
        function uservalid() {
            debugger;
            var username, password;
            username = document.getElementById("TextBox1").value;
            password = document.getElementById("TextBox2").value;
            if (username == '' && password == '') {
                swal("Please Enter All Field")
                return false;
            }
            if (username == '') {
                swal("Please enter name")
                return false
            }
            if (password == '') {
                swal("please enter password")
                return false
            }           
        }


    </script>
</body>
</html>
