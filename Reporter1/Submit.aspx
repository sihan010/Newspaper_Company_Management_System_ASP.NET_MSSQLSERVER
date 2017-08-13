<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Submit.aspx.cs" Inherits="Submit" %>

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
                        <asp:Label ID="Label2" runat="server" Text="Type Report Below"></asp:Label><hr />
                                             
                        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                        <asp:TextBox ID="title" runat="server" CssClass="form-control"></asp:TextBox><hr />
                        <asp:Label ID="Label3" runat="server" Text="Report Content"></asp:Label><br />
                        <textarea id="reportContent" cols="100" rows="20" runat="server"></textarea><hr />
                                        
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="Button1_Click"/>                
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
