<%@ Page Title="" Language="C#" MasterPageFile="~/Navbhar.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="InterTask_Three.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#mytable').DataTable();

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate>
            <table id="mytable">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Mobile</th>
                        <th>Gmail</th>
                        <th>Gender</th>
                        <th>Usertype</th>
                        <th>Image</th>
                        <th>Action</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>

                </td>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("name") %>' Visible="false"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                    <asp:TextBox ID="txtmob" runat="server" Text='<%# Eval("mobile") %>' Visible="false"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("gmail") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("gender") %>'> </asp:Label>
                        <asp:RadioButtonList ID="radio1" runat="server"  Text='<%# Eval("gender") %>' Visible="false">
                            <asp:ListItem>male</asp:ListItem>
                            <asp:ListItem>female</asp:ListItem>
                        </asp:RadioButtonList>
                   
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("usertype") %>'></asp:Label>
                    <asp:DropDownList ID="drop1" runat="server" Text='<%# Eval("usertype") %>' Visible="false">
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="20px" Width="30px" ImageUrl='<%# Eval("image") %>' />
                    <asp:FileUpload ID="FileUpload1" runat="server" Visible="false" />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnEditing">Edit</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="OnDeleting">Delete</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="update" OnClick="OnUpdating" Visible="false">Update</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="OnCanceling" Visible="false">Cancel</asp:LinkButton>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>
