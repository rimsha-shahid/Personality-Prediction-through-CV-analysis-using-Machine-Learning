using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction
{
    public partial class ApptitudeQuestionsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Question = db.ApptitudeQuestionList().ToList();
                GView.DataSource = Question;
                GView.DataBind();
            }
        }

        protected void AddNewQuestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Apptitude Question.aspx");
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
                Response.Redirect("Apptitude Question.aspx?ApptitudeQuestionID=" + e.CommandArgument);
            }
            else
            {
                using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
                {
                    db.DeleteAQ(Convert.ToInt32(e.CommandArgument));
                }
            }
            Reload();
        }
        protected void Reload()
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Question = db.ApptitudeQuestionList().ToList();
                GView.DataSource = Question;
                GView.DataBind();
            }
        }
    }
}