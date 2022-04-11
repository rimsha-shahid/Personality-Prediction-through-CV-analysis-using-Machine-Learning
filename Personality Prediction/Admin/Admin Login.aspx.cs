using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }

       
        protected void GetAdminData_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Aminlogin = db.AdminLoginData(email.Text, password.Text).ToList();
                if (Aminlogin.Count > 0)
                {
                    Session["AdminEmail"] = Aminlogin[0].AdminEmail;
                    Session["AdminPassword"] = Aminlogin[0].AdminPassword;
                    Session.Timeout = 720;

                    Response.Cookies["Personality Prediction"]["AdminEmail"] = Aminlogin[0].AdminEmail.ToString();
                    Response.Cookies["Personality Prediction"]["AdminPassword"] = Aminlogin[0].AdminPassword;
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