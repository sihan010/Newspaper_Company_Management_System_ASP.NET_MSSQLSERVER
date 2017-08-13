<%@ Page Title="Sign In" Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/Site.Master" %>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
        <div class="col-md-offset-4 col-md-3 col-md-offset-5 well">
            <div>
                <h3 style="text-align:center">Sign in</h3><br />
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
                <asp:Button ID="signin" runat="server" Text="Sign In" CssClass="btn btn-success btn-md" OnClick="Signin_Click"/>
                
            </div>
        </div>
    </div>
    </div>
</asp:Content>
    
