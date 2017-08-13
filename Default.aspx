<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="background-image:url(res/jumbo.jpg); color:darkgray">
        <div class="col md-12 lead text-center">
            <h2 style="color:chartreuse">VorTeX</h2>
            <h3>Newspaper Company Management System</h3>
            <p>Manage your works in a convenient way</p>
            <p><a href="/login.aspx" class="btn btn-success btn-lg">Sign In</a></p>
        </div>
    </div>

    <div id="carousel-example-generic" class="carousel slide container-fluid" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="res/sports.jpg">
                <div class="carousel-caption">
                    <h3 style="color:black">Sports</h3>
                </div>
            </div>
            <div class="item">
                <img src="res/business.jpg">
                <div class="carousel-caption">
                    <h3 style="color:black">Business</h3>
                </div>
            </div>
            <div class="item">
                <img src="res/stack.jpg">
                <div class="carousel-caption">
                    <h3 style="color:black">Health</h3>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="row" style="background-color:#229954; color:aliceblue">
        <div class="col-md-4 text-center" style="padding:20px">
            <h3>Notification</h3>
            <p><b>Get Instant Notifications</b></p>
            <img src="res/bell.png" class="img-circle" />
        </div>
            <div class="col-md-4 text-center" style="padding:20px">
            <h3>Formatted</h3>
            <p><b>Pre Formatted Report Templates</b></p>
            <img src="res/text.png" class="img-circle" />
        </div>
            <div class="col-md-4 text-center" style="padding:20px">
            <h3>Responsive</h3>
            <p><b>PC Tablet Smartphone Supported</b></p>
            <img src="res/response.png" class="img-circle" />
        </div>
    </div>
</asp:Content>
