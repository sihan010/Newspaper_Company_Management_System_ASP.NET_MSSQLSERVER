<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Response.aspx.cs" Inherits="Response" %>

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
                        <h3 style="text-align:center">Get Feedback and Respond</h3><br />
                        <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
                        <hr />
                        <asp:Label ID="feedBack" runat="server" Text="Select UnAnswered Feedback ID : "></asp:Label>
                        <asp:DropDownList ID="feedbackId" runat="server">
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        </asp:DropDownList>                 
                        <asp:Button ID="submitFeedback" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="submitFeedback_Click"/>                
                    </div>
                </div>

                <div class="col-md-offset-4 col-md-4 col-md-offset-4 well">
                    <div>                       
                        <asp:Label ID="Label2" runat="server" Text="FeedBack "></asp:Label><hr />
                        <p id="feed" runat="server"></p>
                        <textarea id="ans" cols="50" rows="10" runat="server"></textarea>
                                        
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="Button1_Click"/>                
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
