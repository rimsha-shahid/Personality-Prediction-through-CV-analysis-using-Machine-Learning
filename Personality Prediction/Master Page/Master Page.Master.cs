﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Master_Page
{
    public partial class Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Personality Prediction"] != null)
            {
                Session["AdminEmail"] = Request.Cookies["Personality Prediction"]["AdminEmail"];
                Session["AdminPassword"] = Request.Cookies["Personality Prediction"]["AdminPassword"];
                Session.Timeout = 720;
                // Response.Redirect("AdminList.aspx");
            }
        }
    }
}