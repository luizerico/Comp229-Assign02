﻿using System;
using System.Web.UI;

namespace Comp229_Assign02.survey
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Survey - " + Application["app_name"];
        }

    }
}