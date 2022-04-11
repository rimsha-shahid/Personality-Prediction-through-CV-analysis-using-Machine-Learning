using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Master_Page_for_Home_Page
{
    public partial class Master_Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Personality Prediction"] != null)
            {
                Session["Email"] = Request.Cookies["Personality Prediction"]["Email"];
                Session["Password"] = Request.Cookies["Personality Prediction"]["Password"];
                Session.Timeout = 720;
                // Response.Redirect("AdminList.aspx");
            }
        }
    }
}