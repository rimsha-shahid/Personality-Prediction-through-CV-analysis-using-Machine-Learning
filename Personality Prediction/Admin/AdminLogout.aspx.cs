using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Admin
{
    public partial class AdminLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies["Personality Prediction"].Expires = DateTime.Now.AddMinutes(-1);
            Response.Redirect("Admin Login.aspx");
        }
    }
}