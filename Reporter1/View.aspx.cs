﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitSelect_Click(object sender, EventArgs e)
    {
        Title.InnerText = "Sample Report";
        Content.InnerText = "This is a sample report";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}