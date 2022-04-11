using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction
{
    public partial class Apptitude_Question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack) return;
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                if (Request.QueryString["PersonalityQuestionID"] != null)
                {
                    int PersonalityQuestionID = Convert.ToInt32(Request.QueryString["PersonalityQuestionID"]);
                    var addquest = db.PersonalityQuestionTbls.Where(v => v.PersonalityQuestionID == PersonalityQuestionID).FirstOrDefault();
                    if (addquest != null)
                    {
                        ques.Text = addquest.Question;
                        opt1.Text = addquest.Option1;
                        opt2.Text = addquest.Option2;
                        opt3.Text = addquest.Option3;
                        opt4.Text = addquest.Option4;
                        cans.Text = addquest.CorrectAnswer;
                    }
                }


            }
        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                ApptitudeQuestiontbl AQ = null;
                if (Request.QueryString["ApptitudeQuestionID"] == null)
                {
                    AQ = new ApptitudeQuestiontbl();

                }
                else
                {
                    int ApptitudeQuestionID = Convert.ToInt32(Request.QueryString["ApptitudeQuestionID"]);
                    AQ = db.ApptitudeQuestiontbls.FirstOrDefault(v => v.ApptitudeQuestionID == ApptitudeQuestionID);
                }
                AQ.Question = ques.Text;
                AQ.Option1 = opt1.Text;
                AQ.Option2 = opt2.Text;
                AQ.Option3 = opt3.Text;
                AQ.Option4 = opt4.Text;

                AQ.CorrectAnswer = cans.Text;


                if (Request.QueryString["ApptitudeQuestionID"] == null)
                {
                    db.ApptitudeQuestiontbls.Add(AQ);
                }
                db.SaveChanges();
                Response.Redirect("ApptitudeQuestionsList.aspx");
            }
        }
    }
}