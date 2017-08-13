<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="/Content/bootstrap.css" />
    <form id="form1" runat="server">
        <div class="container-fluid dynamic-content">
            <div class="row">
                <div class="col-md-offset-4 col-md-4 col-md-offset-4 well">
                    <div>
                        <h3 style="text-align:center">Add Login Credentials to The System</h3><br />
                        <asp:Label ID="signinError" runat="server" ForeColor="Red"></asp:Label>
                        <hr />
                        <asp:Label ID="userIDLabel" runat="server" Text="User ID : "></asp:Label>
                        <asp:TextBox ID="userID" runat="server" CssClass="form-control"></asp:TextBox><hr />

                        <asp:Label ID="passwordLabel" runat="server" Text="Password : "></asp:Label>
                        <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox><hr />

                        <asp:Label ID="roleLabel" runat="server" Text="Role: "></asp:Label>
                        <asp:DropDownList ID="role" runat="server" CssClass="form-control">
                            <asp:ListItem Enabled="true" Text="Reporter" Value="Reporter"></asp:ListItem>
                            <asp:ListItem Text="Editor" Value="Editor"></asp:ListItem>
                            <asp:ListItem Text="Senior Editor" Value="Senior Editor"></asp:ListItem>
                            <asp:ListItem Text="Management" Value="Management"></asp:ListItem>
                            <asp:ListItem Text="Printing" Value="Printing"></asp:ListItem>
                            <asp:ListItem Text="Store" Value="Store"></asp:ListItem>
                            <asp:ListItem Text="Administrator" Value="Administrator"></asp:ListItem>
                        </asp:DropDownList><hr />
                        <asp:Button ID="AddUser1" runat="server" Text="Add User" CssClass="btn btn-success btn-md" OnClick="AddUser1_Click"/>
                
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
