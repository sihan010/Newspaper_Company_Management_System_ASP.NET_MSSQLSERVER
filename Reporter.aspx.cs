using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reporter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        result.Visible = false;

        loggesID.InnerText = Session[0].ToString();
        loggedRole.InnerText = Session[1].ToString();
    }

    protected void My_Reports_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "My Reports";
        result.Visible = true;
        result.Src = "/Reporter1/View.aspx";
    }

    protected void Modification_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "Modify Reports";
        result.Visible = true;
        result.Src = "/Reporter1/Modify.aspx";
    }

    protected void Submit_report_Click(object sender, EventArgs e)
    {
        head.InnerHtml = "New Report";
        result.Visible = true;
        result.Src = "/Reporter1/Submit.aspx";
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