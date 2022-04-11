using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Admin
{
    public partial class CustomerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Customer = db.CustomerList().ToList();
                GView.DataSource = Customer;
                GView.DataBind();
            }
        }

        protected void AddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerRegistration.aspx");
        }

        protected void GView_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                Response.Redirect("CustomerRegistration.aspx?CustomerID=" + e.CommandArgument);
            }
            else
            {
                using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
                {
                    db.DeleteCustomers(Convert.ToInt32(e.CommandArgument));
                }
            }
            Reload();
        }
        protected void Reload()
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Customer = db.CustomerList().ToList();
                GView.DataSource = Customer;
                GView.DataBind();
            }
        }

    }
}