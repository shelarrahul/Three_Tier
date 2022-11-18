<%@ Page Title="" Language="C#" MasterPageFile="~/Navbhar.Master" AutoEventWireup="true" CodeBehind="Changepass.aspx.cs" Inherits="InterTask_Three.Changepass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function userValid() {
            var oldpass, newpass, confirmpass;
            oldpass = document.getElementById("TextBox1").value;
            newpass = document.getElementById("TextBox3").value;
            confirmpass = document.getElementById("TextBox2").value;
            var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id 
            var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/; 
            if (oldpass == '' || newpass == '' || confirmpass == '') {
                swal("Enter All Fields");
                return false;
            }
            if (oldpass == '') {
                swal("Enter OldPassword Fields")
                return false;
            }
            if (newpass == '') {
                swal("Enter NewPassword Fields")
                return false;
            }
            if (newpass != passw) {
                swal("Password should be maximum 6")
                return false;
            }

            if (confirmpass == '') {
                swal("Enter ConfirmPassword Fields")
                return false;
            } if (newpass != confirmpass) {
                swal("Password not match")
                return false;
            }
           
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5">
            <div class="row">
                <div class="col-md-6  mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <div class="mb-3">

                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" ValidationGroup="regi" placeholder="OldPassword" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:TextBox ID="TextBox3" runat="server"  TextMode="Password" ValidationGroup="regi" placeholder="NewPassword" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ValidationGroup="regi" placeholder="confirmPassword" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mb-3 d-grid gap-2">
                                        <asp:Button ID="Button1"  runat="server" Text="Update" OnClick="Button1_Click"  ValidationGroup="regi" CssClass="btn btn-primary" />
                                        <asp:Label ID="Label1" runat="server" ValidationGroup="regi"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
