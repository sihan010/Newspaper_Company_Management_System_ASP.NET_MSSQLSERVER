using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void submitSelect_Click(object sender, EventArgs e)
    {
        report.InnerHtml = "This is a sample Report";
        message.InnerHtml = "Please modify the report";
        title.Text = "Sample Report";
        reportContent.InnerText= "This is a sample Report";
    }
}