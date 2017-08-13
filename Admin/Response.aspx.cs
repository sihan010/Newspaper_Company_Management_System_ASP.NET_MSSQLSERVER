using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Response : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitFeedback_Click(object sender, EventArgs e)
    {
        feed.InnerText = "This is a sample feedback";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(ans.InnerText=="")
            Error.Text = "Please Provide a Response";
        else
            Error.Text = "Feedback is Responded";
    }
}