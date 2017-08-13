<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="Modify" %>

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
                        <h3 style="text-align:center">Submit New Report</h3><br />
                        <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
                        <hr />
                        <asp:Label ID="select" runat="server" Text="Select requested report's ID : "></asp:Label>
                        <asp:DropDownList ID="feedbackId" runat="server">
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>                            
                        </asp:DropDownList>                 
                        <asp:Button ID="submitSelect" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="submitSelect_Click"/>                
                    </div>
                </div>

                <div class="col-md-offset-4 col-md-4 col-md-offset-4 well">
                    <div>                       
                        <asp:Label ID="Label2" runat="server" Text="Report:"></asp:Label>
                        <p id="report" runat="server"></p><hr />
                        <asp:Label ID="Label4" runat="server" Text="Message:"></asp:Label>
                        <p id="message" runat="server"></p><hr />
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
