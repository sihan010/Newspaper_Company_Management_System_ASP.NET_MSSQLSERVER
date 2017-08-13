<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approve.aspx.cs" Inherits="Approve" %>

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
                        <h3 style="text-align:center">Validate Requested Reports</h3><br />
                        <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
                        <hr />
                        <asp:Label ID="select" runat="server" Text="Select report's ID : "></asp:Label>
                        <asp:DropDownList ID="feedbackId" runat="server">
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>                             
                        </asp:DropDownList>                 
                        <asp:Button ID="submitSelect" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="submitSelect_Click"/>                
                    </div>
                </div>

                <div class="col-md-offset-4 col-md-4 col-md-offset-4 well">
                    <div>                       
                        <asp:Label ID="Label2" runat="server" Text="Title:"></asp:Label>
                        <p id="Title" runat="server"></p><hr />
                        <asp:Label ID="Label4" runat="server" Text="Content:"></asp:Label>
                        <p id="Content" runat="server"></p><hr /> 
                        <asp:Label ID="Label1" runat="server" Text="Message"></asp:Label><br />
                        <asp:TextBox ID="message" runat="server" CssClass="form-control"></asp:TextBox><hr />
                         <asp:Button ID="approve" runat="server" Text="Approve" CssClass="btn btn-success btn-md" OnClick="approve_Click"/>
                         <asp:Button ID="modify" runat="server" Text="Request Modification" CssClass="btn btn-success btn-md" OnClick="modify_Click"/>
                         
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
