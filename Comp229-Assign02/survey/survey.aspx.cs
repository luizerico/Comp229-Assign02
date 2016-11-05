using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02.survey
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        HttpCookie user_cookie;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Survey - " + Application["app_name"];

            //// HttpCookie user_cookie;
            //user_cookie = Request.Cookies["user_name"];
            //if (user_cookie != null)
            //{
            //    label_user.Text = user_cookie.Value;

            //    string[] username = user_cookie.Value.Split(' ');
            //    text_firstname.Text = username[0];
            //    text_lastname.Text = username[1];

            //    // Better create a temporary variable than call Split twice...
            //    //text_firstname.Text = user_cookie.Value.Split(' ')[0];
            //    //text_lastname.Text = user_cookie.Value.Split(' ')[1];
            //}

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            // HttpCookie user_cookie;
            user_cookie = Request.Cookies["user_name"];
            if (user_cookie != null)
            {
                label_user.Text = user_cookie.Value;

                string[] username = user_cookie.Value.Split(' ');
                text_firstname.Text = username[0];
                text_lastname.Text = username[1];

                // Better create a temporary variable than call Split twice...
                //text_firstname.Text = user_cookie.Value.Split(' ')[0];
                //text_lastname.Text = user_cookie.Value.Split(' ')[1];
            }

        }

        protected void button_submit_Click(object sender, EventArgs e)
        {
            // HttpCookie user_cookie;
            user_cookie = new HttpCookie("user_name", text_firstname.Text + ' ' + text_lastname.Text);
            user_cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(user_cookie);

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
                // Working in progress...
            }
        }

    }
}