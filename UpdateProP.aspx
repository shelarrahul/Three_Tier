<%@ Page Title="" Language="C#" MasterPageFile="~/Navbhar.Master" AutoEventWireup="true" CodeBehind="UpdateProP.aspx.cs" Inherits="InterTask_Three.UpdateProP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image2.ClientID%>').prop('src', e.target.result)
                        .width(240)
                        .height(150);
                };
                reader.readAsDataURL(input.files[0]);
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
                                <center>
                                    <div class="mb-3">
                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="80px" Width="100px" /><br />
                                        <%--<asp:Image ID="Image2" runat="server" ImageUrl="'<%# Eval("image") %>'" Height="80px" Width="100px" /><br />--%>
                                    </div>
                                    <div class="mb-3 d-flex align-items-center justify-content-center" style="width: 235px;margin-left: 130px;">
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="ShowImagePreview(this);" />
                                    </div>
                                    <div class="mb-3">
                                        <asp:Button ID="Button4" runat="server" Text="Update" CssClass="btn btn-dark px-4" OnClick="Button4_Click" />
                                    </div>
                                    <div class="mb-3 ">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
