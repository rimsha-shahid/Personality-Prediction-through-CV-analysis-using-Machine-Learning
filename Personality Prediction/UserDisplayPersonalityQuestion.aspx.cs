using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction
{
    public partial class UserDisplayPersonalityQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
                {
                    PersonalityQuestionTbl PQ = new PersonalityQuestionTbl(); 
                    var repeater = db.GetPQData().ToList();
                    Repeater.DataSource = repeater;
                    Repeater.DataBind();
                }
            }
        }

        protected void SubmitPQans_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                //string PQradiobtn = string.Empty;
                //if(RadioButton RB1 = (RadioButton)R.FindControl("RBopt1"D);)


            }

        }

        protected void ShowPQans_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {

                foreach (RepeaterItem R in Repeater.Items)
                {
                    PersonalityQuestionTbl PQT = new PersonalityQuestionTbl();
                    string PQradiobtn = string.Empty;
                    RadioButton RB1 = (RadioButton)R.FindControl("RBopt1");
                    if (RB1.Checked == true)
                    {
                        Label UserAns = (Label)R.FindControl("userselectedans");
                        UserAns.Text = "The selected answer is <b>" + RB1.Text.ToString() + "</b>";
                        PQradiobtn = "Selected A";
                    }

                }
                foreach (RepeaterItem R in Repeater.Items)
                {
                    PersonalityQuestionTbl PQT = new PersonalityQuestionTbl();
                    string PQradiobtn = string.Empty;
                    RadioButton RB2 = (RadioButton)R.FindControl("RBopt2");
                    if (RB2.Checked == true)
                    {
                        Label UserAns = (Label)R.FindControl("userselectedans");
                        UserAns.Text = "The selected answer is <b>" + RB2.Text.ToString() + "</b>";
                        PQradiobtn = "Selected B";
                    }
                }
                foreach (RepeaterItem R in Repeater.Items)
                {
                    PersonalityQuestionTbl PQT = new PersonalityQuestionTbl();
                    string PQradiobtn = string.Empty;
                    RadioButton RB3 = (RadioButton)R.FindControl("RBopt3");
                    if (RB3.Checked == true)
                    {
                        Label UserAns = (Label)R.FindControl("userselectedans");
                        UserAns.Text = "The selected answer is <b>" + RB3.Text.ToString() + "</b>";
                        PQradiobtn = "Selected C";
                    }
                }
                foreach (RepeaterItem R in Repeater.Items)
                {
                    PersonalityQuestionTbl PQT = new PersonalityQuestionTbl();
                    string PQradiobtn = string.Empty;
                    RadioButton RB4 = (RadioButton)R.FindControl("RBopt4");
                    if (RB4.Checked == true)
                    {
                        Label UserAns = (Label)R.FindControl("userselectedans");
                        UserAns.Text = "The selected answer is <b>" + RB4.Text.ToString() + "</b>";
                        PQradiobtn = "Selected D";
                    }
                }
                foreach (RepeaterItem R in Repeater.Items)
                {
                    PersonalityQuestionTbl PQT = new PersonalityQuestionTbl();
                    string PQradiobtn = string.Empty;
                    RadioButton RB5 = (RadioButton)R.FindControl("RBopt5");
                    if (RB5.Checked == true)
                    {
                        Label UserAns = (Label)R.FindControl("userselectedans");
                        UserAns.Text = "The selected answer is <b>" + RB5.Text.ToString() + "</b>";
                        PQradiobtn = "Selected E";
                    }
                }
                

            }
        }
    }
}