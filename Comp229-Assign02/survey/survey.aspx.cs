using System;
using System.Collections;
using System.Collections.Generic;
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

            Application["first_name"] = text_firstname.Text;
            Application["last_name"] = text_lastname.Text;
            Application["email"] = text_email.Text;
            Application["phone"] = text_phone.Text;
            Application["birthdate"] = date_birthdate.SelectedDate;
            Application["gender"] = radiobox_gender.Text;
            Application["university"] = text_university.Text;
            List<string> items = new List<string>();
            foreach (ListItem item in checkbox_areas.Items) { if (item.Selected) { items.Add(item.Text); } };
            Application["areas"] = string.Join(", ", items.ToArray());
            Application["company"] = text_company1.Text;
            Application["start"] = text_start1.Text;
            Application["end"] = text_end1.Text;


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