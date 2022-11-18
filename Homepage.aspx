<%@ Page Title="" Language="C#" MasterPageFile="~/Navbhar.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="InterTask_Three.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/>
        <%--<link href="BootStrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <script src="BootStrap/css/dataTables.bootstrap5.min.js"></script>--%>
        <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#mytable').DataTable();

            });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table id="mytable">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Mobile</th>
                        <th>G-mail</th>
                        <th>Gender</th>
                        <th>Image</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("gmail") %>'></asp:Label>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                <td>
                    <asp:Image ID="lbl_Image" runat="server" ImageUrl='<%# Eval("image") %>' Height="20px" Width="30px" />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
