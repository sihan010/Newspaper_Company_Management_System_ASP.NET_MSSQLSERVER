using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Senior : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        result.Visible = false;

        loggesID.InnerText = Session[0].ToString();
        loggedRole.InnerText = Session[1].ToString();
    }

    protected void Validate_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "Approve Reports";
        result.Visible = true;
        result.Src = "Senior1/Approve.aspx";
    }

    protected void View_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "View Any Report";
        result.Visible = true;
        result.Src = "Senior1/View.aspx";
    }

    protected void employee_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "View Any Employee Record";
        result.Visible = true;
        result.Src = "Senior1/Employee.aspx";
    }

    protected void logOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("/Default.aspx");
    }

    protected void feed_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "Provide Feedback";
        result.Visible = true;
        result.Src = "Feedback.aspx";
    }
}