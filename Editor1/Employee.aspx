<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

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
                        <h3 style="text-align:center">View Employee Record</h3><br />
                        <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
                        <hr />
                        <asp:Label ID="select" runat="server" Text="Select reporter's User ID : "></asp:Label>
                        <asp:DropDownList ID="feedbackId" runat="server">
                            <asp:ListItem Text="rayhan" Value="rayhan"></asp:ListItem>                             
                        </asp:DropDownList>                 
                        <asp:Button ID="submitSelect" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="submitSelect_Click"/>                
                    </div>
                </div>

                <div class="col-md-offset-4 col-md-4 col-md-offset-4 well">
                    <div>                       
                        
                        <p id="Approved" runat="server"></p><hr />
                        
                        <p id="Pending" runat="server"></p><hr />                  
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
