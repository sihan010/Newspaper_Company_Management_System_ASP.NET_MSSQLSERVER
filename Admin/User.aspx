<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

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

                        <asp:Label ID="fnameLabel" runat="server" Text="First Name : "></asp:Label>
                        <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox><hr />

                        <asp:Label ID="lnameLabel" runat="server" Text="Last Name : "></asp:Label>
                        <asp:TextBox ID="Lname1" runat="server" CssClass="form-control"></asp:TextBox><hr />

                        <asp:Label ID="emailLabel" runat="server" Text="E-Mail : "></asp:Label>
                        <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox><hr />

                        <asp:Label ID="addressLabel" runat="server" Text="Address : "></asp:Label>
                        <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox><hr />

                        <asp:Label ID="designationLabel" runat="server" Text="Designation : "></asp:Label>
                        <asp:TextBox ID="designation" runat="server" CssClass="form-control"></asp:TextBox><hr />

                        <asp:Label ID="joinedLAbel" runat="server" Text="Joined At : "></asp:Label>
                        <asp:Calendar ID="joined" runat="server"></asp:Calendar><hr />

                        <asp:Label ID="workingLabel" runat="server" Text="Working Area : "></asp:Label>
                        <asp:TextBox ID="working" runat="server" CssClass="form-control"></asp:TextBox><hr />
                        
                        <asp:Button ID="Add" runat="server" Text="Add User" CssClass="btn btn-success btn-md" OnClick="Add_Click"/>
                
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
