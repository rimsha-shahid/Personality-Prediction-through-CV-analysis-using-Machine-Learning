using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Admin
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void GetData_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Customerlogin = db.CustomerLogin(email.Text, password.Text).ToList();
                if (Customerlogin.Count > 0)
                {
                    Session["Email"] = Customerlogin[0].Email;
                    Session["Password"] = Customerlogin[0].Password;
                    Session.Timeout = 720;

                    Response.Cookies["Personality Prediction"]["Email"] = Customerlogin[0].Email.ToString();
                    Response.Cookies["Personality Prediction"]["Password"] = Customerlogin[0].Password;
                    Response.Cookies["Personality Prediction"].Expires = DateTime.Now.AddDays(1);

                    Response.Redirect("CustomerList.aspx");
                }
                else
                {
                    lblmsg.Text = "Invalid Email or Password";
                }
            }

        }
    }
}