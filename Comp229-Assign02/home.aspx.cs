using System;

namespace Comp229_Assign02
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // More clear way to change the page title using Page. To test other ways some pages are using only Title = "".
            Page.Title = "Home - " + Application["app_name"];
        }
    }
}