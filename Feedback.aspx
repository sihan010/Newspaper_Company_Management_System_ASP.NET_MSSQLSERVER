<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

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
                        <h3 style="text-align:center">Please write you feedback below</h3><br />
                        <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
                        <textarea id="TextArea1" cols="100" rows="10" runat="server"></textarea>   <br />          
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-success btn-md" OnClick="submit_Click"/>                
                    </div>
                </div>                
            </div>
        </div>
    </form>
</body>
</html>
