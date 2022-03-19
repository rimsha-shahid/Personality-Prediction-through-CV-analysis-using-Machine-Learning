using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction
{
    public partial class Personality_Question : System.Web.UI.Page
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
                        opt5.Text = addquest.Option5;
                        correctans.Text = addquest.CorrectAnswer;
                    }
                }


            }
        }

       
        protected void SaveDataPQ_Click(object sender, EventArgs e)
        {
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                PersonalityQuestionTbl PQ = null;
                if (Request.QueryString["PersonalityQuestionID"] == null)
                {
                    PQ = new PersonalityQuestionTbl();
                   
                }
                else
                {
                    int PersonalityQuestionID = Convert.ToInt32(Request.QueryString["PersonalityQuestionID"]);
                    PQ = db.PersonalityQuestionTbls.FirstOrDefault(v => v.PersonalityQuestionID == PersonalityQuestionID);
                   
                }
                PQ.Question = ques.Text;
                PQ.Option1 = opt1.Text;
                PQ.Option2 = opt2.Text;
                PQ.Option3 = opt3.Text;
                PQ.Option4 = opt4.Text;
                PQ.Option5 = opt5.Text;
                PQ.CorrectAnswer = correctans.Text;


                if (Request.QueryString["PersonalityQuestionID"] == null)
                {
                    db.PersonalityQuestionTbls.Add(PQ);
                }
                db.SaveChanges();
                Response.Redirect("PersonalityQuestionsList.aspx");
                //AdminRegTbl AdminTbl = new AdminRegTbl();
                //AdminTbl.AdminName = name.Text;
                //AdminTbl.AdminPassword = password.Text;
                //AdminTbl.AdminEmail = email.Text;
                //db.AdminRegTbls.Add(AdminTbl);
                //db.SaveChanges();
                //Response.Write("Record Save");
            }
        }
    }
}