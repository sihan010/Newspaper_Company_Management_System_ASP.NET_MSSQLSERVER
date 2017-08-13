<%@ Page Title="Administrator" Language="C#" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" MasterPageFile="~/Site.master" %>

<asp:Content ID="AdminContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row" style="margin-bottom:100px;background-color:lightyellow">
        <div class="col-md-offset-1 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li>
                <asp:LinkButton ID="View" runat="server" OnClick="View_Click" Text="View Reports"></asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="feed" runat="server" OnClick="feed_Click" Text="Feedback"></asp:LinkButton>
            </li>           
          </ul>
            <hr />
          <ul class="nav nav-sidebar">
            <li><p>Logged In As</p></li>
            <li>User: <p id="loggesID" runat="server"></p></li>
            <li>Role: <p id="loggedRole" runat="server"></p></li>
            <li>
                <asp:LinkButton ID="logOut" runat="server" OnClick="logOut_Click" Text="Log Out"></asp:LinkButton>
            </li>
          </ul>
            <hr />
        </div>
        <div class="col-md-8  main" style="height:500px">
          <h2 id="head" runat="server">Please Select an Action</h2>
            <iframe id="result" runat="server" height="100%" width="100%"></iframe>
          </div>
        </div>
    

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>   
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

</asp:Content>
