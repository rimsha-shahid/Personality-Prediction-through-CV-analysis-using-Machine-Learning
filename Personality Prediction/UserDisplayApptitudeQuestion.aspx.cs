using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction
{
    public partial class UserDisplayApptitudeQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
                {
                    PersonalityQuestionTbl PQ = new PersonalityQuestionTbl();
                    var repeater = db.GetAQData().ToList();
                    Repeater.DataSource = repeater;
                    Repeater.DataBind();
                }
            }
        }

        

        protected void ShowPQans_Click(object sender, EventArgs e)
        {
            

           
        }

        protected void SubmitAQans_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                //userApptitudeAnswer UA = new userApptitudeAnswer();
                ////UA.Option1 = RBopt1.text;


               ApptitudeQuestiontbl sa = new ApptitudeQuestiontbl();
                sa.CorrectAnswer = SubmitAQans.Text;
                string AQradiobtn = string.Empty;
             // if (.Checked)
             //   {
             //       AQradiobtn = "option a";
              //  }
                //RadioButton RB1 = new RadioButton();
                //if (RB1.Checked == true)
                //{

                //}

                //foreach (RepeaterItem R in Repeater.Items)
                //{

                //    string AQradiobtn = string.Empty;
                //    RadioButton RB1 = (RadioButton)R.FindControl("RBopt1");
                //    if (RB1.Checked == true)
                //    {
                //        Label UserAns = (Label)R.FindControl("userselectedans");
                //        UserAns.Text = "The selected answer is <b>" + RB1.Text.ToString() + "</b>";
                //        AQradiobtn = "Selected A";
                //    }

                //}

                //db.submittedanswertbls.Add(sa);
                db.SaveChanges();
                Response.Write("<script>alert('Your Answer is Submitted Successfully')</script>");


            }
        }
    }
 }
