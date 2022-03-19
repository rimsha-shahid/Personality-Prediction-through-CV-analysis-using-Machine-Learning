using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction
{
    public partial class PersonalityQuestionsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Question = db.PersonalityQuestionList().ToList();
                GView.DataSource = Question;
                GView.DataBind();
            }
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
                Response.Redirect("Personality Question.aspx?PersonalityQuestionID=" + e.CommandArgument);
            }
            else
            {
                using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
                {
                    db.DeletePQ(Convert.ToInt32(e.CommandArgument));
                }
            }
            Reload();
        }

        protected void AddNewQuestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Personality Question.aspx");
        }
        protected void Reload()
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                var Question = db.PersonalityQuestionList().ToList();
                GView.DataSource = Question;
                GView.DataBind();
            }
        }
    }
}