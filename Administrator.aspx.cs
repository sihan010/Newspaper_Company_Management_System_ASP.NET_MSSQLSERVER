using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vortex;

public partial class Administrator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        result.Visible = false;      
        
        loggesID.InnerText = Session[0].ToString();
        loggedRole.InnerText = Session[1].ToString();
             
    }


    protected void AddUser_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "ADD User Login";
        result.Visible = true;
        result.Src = "Admin/AddUser.aspx";
    }

    protected void User_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "ADD User";
        result.Visible = true;
        result.Src = "Admin/User.aspx";
    }

    protected void respond_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "Respont to User Feedback";
        result.Visible = true;
        result.Src = "Admin/Response.aspx";
    }

    protected void logOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("/Default.aspx");
    }
}