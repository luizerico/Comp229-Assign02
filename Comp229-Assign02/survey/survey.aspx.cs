using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02.survey
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Survey - " + Application["app_name"];
        }

        protected void button_submit_Click(object sender, EventArgs e)
        {
            Server.Transfer("thankyou.aspx", true);
        }

        protected void DateValidateValue(object source, ServerValidateEventArgs args)
        {
            if (checkbox_haveworked.SelectedValue.Equals("yes"))
            {
                
            }
        }


    }
}