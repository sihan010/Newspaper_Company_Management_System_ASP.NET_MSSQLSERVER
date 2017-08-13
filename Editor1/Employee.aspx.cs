using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitSelect_Click(object sender, EventArgs e)
    {
        Approved.InnerText = "rayhan has 1 approved reports";
        Pending.InnerText = "rayhan has 1 pending reports";
    }
}