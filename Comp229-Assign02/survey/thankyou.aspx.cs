using System;
using System.Web.UI;

namespace Comp229_Assign02.survey
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Thank you - " + Application["app_name"];
        }
    }
}