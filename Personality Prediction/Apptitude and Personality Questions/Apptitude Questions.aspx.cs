using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Apptitude_and_Personality_Questions
{
    public partial class Apptitude_Questions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkbuttonApptitude_Click(object sender, EventArgs e)
        {
            int Score = 0;
            if (q1.SelectedItem.Value == "1")
                Score += 1;
            else if (q1.SelectedItem.Value == "2")
                Score += 0;
            else if (q1.SelectedItem.Value == "3")
                Score += 0;
            else if (q1.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

           
            if (q2.SelectedItem.Value == "1")
                Score += 1;
            else if (q2.SelectedItem.Value == "2")
                Score += 0;
            else if (q2.SelectedItem.Value == "3")
                Score += 0;
            else if (q2.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q3.SelectedItem.Value == "1")
                Score += 0;
            else if (q3.SelectedItem.Value == "2")
                Score += 0;
            else if (q3.SelectedItem.Value == "3")
                Score += 1;
            else if (q3.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q4.SelectedItem.Value == "1")
                Score += 1;
            else if (q4.SelectedItem.Value == "2")
                Score += 0;
            else if (q4.SelectedItem.Value == "3")
                Score += 0;
            else if (q4.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q5.SelectedItem.Value == "1")
                Score += 0;
            else if (q5.SelectedItem.Value == "2")
                Score += 0;
            else if (q5.SelectedItem.Value == "3")
                Score += 1;
            else if (q5.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q6.SelectedItem.Value == "1")
                Score += 0;
            else if (q6.SelectedItem.Value == "2")
                Score += 1;
            else if (q6.SelectedItem.Value == "3")
                Score += 0;
            else if (q6.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q7.SelectedItem.Value == "1")
                Score += 0;
            else if (q7.SelectedItem.Value == "2")
                Score += 0;
            else if (q7.SelectedItem.Value == "3")
                Score += 1;
            else if (q7.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q8.SelectedItem.Value == "1")
                Score += 1;
            else if (q8.SelectedItem.Value == "2")
                Score += 0;
            else if (q8.SelectedItem.Value == "3")
                Score += 0;
            else if (q8.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q9.SelectedItem.Value == "1")
                Score += 0;
            else if (q9.SelectedItem.Value == "2")
                Score += 0;
            else if (q9.SelectedItem.Value == "3")
                Score += 1;
            else if (q9.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;


            if (q10.SelectedItem.Value == "1")
                Score += 0;
            else if (q10.SelectedItem.Value == "2")
                Score += 0;
            else if (q10.SelectedItem.Value == "3")
                Score += 1;
            else if (q10.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            result.Text = "Total Marks are 10 <br/>" + "Your result is " + Score.ToString() + " Marks" + "<br/> Each option has 1 mark ";


        }
    }
}