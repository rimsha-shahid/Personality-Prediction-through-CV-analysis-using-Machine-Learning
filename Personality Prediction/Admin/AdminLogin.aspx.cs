using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void AdminData_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var AdminLogin = db.LoginAdmin(email.Text, password.Text).ToList();
                if (AdminLogin.Count > 0)
                {
                    Session["AdminEmail"] = AdminLogin[0].AdminEmail;
                    Session["AdminPassword"] = AdminLogin[0].AdminPassword;
                    Session.Timeout = 720;

                    Response.Cookies["Personality Prediction"]["AdminEmail"] = AdminLogin[0].AdminEmail.ToString();
                    Response.Cookies["Personality Prediction"]["AdminPassword"] = AdminLogin[0].AdminPassword;
                    Response.Cookies["Personality Prediction"].Expires = DateTime.Now.AddDays(1);

                    Response.Redirect("Adminlist.aspx");
                }
                else
                {
                    lblmsg.Text = "Invalid Email or Password";
                }
            }
        }
    }
}