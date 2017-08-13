using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Validate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitSelect_Click(object sender, EventArgs e)
    {
        Title.InnerText = "Sample Report";
        Content.InnerText = "This is a sample report";
    }

    protected void approve_Click(object sender, EventArgs e)
    {
        Error.Text = "Report is approved";
    }

    protected void modify_Click(object sender, EventArgs e)
    {
        if (message.Text == "")
            Error.Text = "Please Add a message";
        else
            Error.Text = "Reporter is requested for modification";
    }

    protected void request_Click(object sender, EventArgs e)
    {
        Error.Text = "Senior Editor is requested for Approval";
    }
}