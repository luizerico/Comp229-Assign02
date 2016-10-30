using System;

namespace Comp229_Assign02
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Using only the variable Title to set the page title.
            Title = "About us - " + Application["app_name"];
        }
    }
}