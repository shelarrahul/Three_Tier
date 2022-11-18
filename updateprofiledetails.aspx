<%@ Page Title="" Language="C#" MasterPageFile="~/Navbhar.Master" AutoEventWireup="true" CodeBehind="updateprofiledetails.aspx.cs" Inherits="InterTask_Three.updateprofiledetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function userValid() {
            var name, mobile, gmail, gender;
            name = document.getElementById("TextBox1").value;
            mobile = document.getElementById("TextBox2").value;
            gmail = document.getElementById("TextBox3").value;
            gender = document.getElementById("RadioButtonList1").value;
            if (name == '' || mobile == '' || gmail == '' || gender=='') {
                swal("Enter All Fields");
                return false;
            }
            if (name == '') {
                swal("Enter Name Fields")
                return false;
            }
            if (mobile == '') {
                swal("Enter Mobile Fields")
                return false;
            }
            if (gmail == '') {
                swal("Enter gmail Fields")
                return false;
            }
            if (gender == '') {
                swal("Enter gmail Fields")
                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container my-5">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <div class="mb-3">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Name" ValidationGroup="regi"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Mobile No" OnTextChanged="Page_Load" TextMode="Phone" ValidationGroup="regi"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="G-mail" TextMode="Email" ValidationGroup="regi"></asp:TextBox>
                                    </div>
                                    <div class="mb-3 d-flex align-items-center form-control">
                                        <asp:Label ID="Label1" runat="server" Text="Select Gender" CssClass="me-4 "></asp:Label>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="d-flex align-items-center" RepeatDirection="Horizontal">
                                            <asp:ListItem class="m-3">male</asp:ListItem>
                                            <asp:ListItem class="m-3">female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="mb-3 d-grid gap-2">
                                         <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary " OnClick="Button1_Click" Text="Update" ValidationGroup="regi" OnClientClick="return userValid();" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
