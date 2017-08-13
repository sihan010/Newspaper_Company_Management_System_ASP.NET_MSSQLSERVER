using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if(TextArea1.InnerText=="")
            Error.Text = "Please Provide some feedback";
        else
            Error.Text = "Feedback is sent to Administrator. Thank you for your Support";
    }
}