using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Apptitude_and_Personality_Questions
{
    public partial class Personaliy_Questions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calculation(object sender, EventArgs e)
        {
            int Score = 0;
            if (q1.SelectedItem.Value == "1")
                Score += 3;
            else if (q1.SelectedItem.Value == "2")
                Score += 2;
            else if(q1.SelectedItem.Value == "3")
                Score += 1;
            else if (q1.SelectedItem.Value == "4")
                Score += 0;
            else if (q1.SelectedItem.Value == "5")
                Score += 0;
            else if (q1.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q2.SelectedItem.Value == "1")
                Score += 3;
            else if (q2.SelectedItem.Value == "2")
                Score += 2;
            else if (q2.SelectedItem.Value == "3")
                Score += 1;
            else if (q2.SelectedItem.Value == "4")
                Score += 0;
            else if (q2.SelectedItem.Value == "5")
                Score += 0;
            else if (q2.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q3.SelectedItem.Value == "1")
                Score += 3;
            else if (q3.SelectedItem.Value == "2")
                Score += 2;
            else if (q3.SelectedItem.Value == "3")
                Score += 1;
             else if (q3.SelectedItem.Value == "4")
                Score += 0;
            else if (q3.SelectedItem.Value == "5")
                Score += 0;
            else if (q3.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q4.SelectedItem.Value == "1")
                Score += 3;
            else if (q4.SelectedItem.Value == "2")
                Score += 2;
            else if (q4.SelectedItem.Value == "3")
                Score += 1;
            else if (q4.SelectedItem.Value == "4")
                Score += 0;
            else if (q4.SelectedItem.Value == "5")
                Score += 0;
            else if (q4.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q5.SelectedItem.Value == "1")
                Score += 3;
            else if (q5.SelectedItem.Value == "2")
                Score += 2;
            else if (q5.SelectedItem.Value == "3")
                Score += 1;
            else if (q5.SelectedItem.Value == "4")
                Score += 0;
            else if (q5.SelectedItem.Value == "5")
                Score += 0;
            else if (q5.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q6.SelectedItem.Value == "1")
                Score += 3;
            else if (q6.SelectedItem.Value == "2")
                Score += 2;
            else if (q6.SelectedItem.Value == "3")
                Score += 1;
            else if (q6.SelectedItem.Value == "4")
                Score += 0;
            else if (q6.SelectedItem.Value == "5")
                Score += 0;
            else if (q6.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q7.SelectedItem.Value == "1")
                Score += 3;
            else if (q7.SelectedItem.Value == "2")
                Score += 2;
            else if (q7.SelectedItem.Value == "3")
                Score += 1;
            else if (q7.SelectedItem.Value == "4")
                Score += 0;
            else if (q7.SelectedItem.Value == "5")
                Score += 0;
            else if (q7.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q8.SelectedItem.Value == "1")
                Score += 3;
            else if (q8.SelectedItem.Value == "2")
                Score += 2;
            else if (q8.SelectedItem.Value == "3")
                Score += 1;
            else if (q8.SelectedItem.Value == "4")
                Score += 0;
            else if (q8.SelectedItem.Value == "5")
                Score += 0;
            else if (q8.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q9.SelectedItem.Value == "1")
                Score += 3;
            else if (q9.SelectedItem.Value == "2")
                Score += 2;
            else if (q9.SelectedItem.Value == "3")
                Score += 1;
            else if (q9.SelectedItem.Value == "4")
                Score += 0;
            else if (q9.SelectedItem.Value == "5")
                Score += 0;
            else if (q9.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            if (q10.SelectedItem.Value == "1")
                Score += 3;
            else if (q10.SelectedItem.Value == "2")
                Score += 2;
            else if (q10.SelectedItem.Value == "3")
                Score += 1;
            else if (q10.SelectedItem.Value == "4")
                Score += 0;
            else if (q10.SelectedItem.Value == "5")
                Score += 0;
            else if (q10.SelectedItem.Value == " ")
                Score += 0;
            else
                Score += 0;

            result.Text = "Total Marks are 30 <br/>" + "Your result is " + Score.ToString() + " Marks" + "<br/> Option 1 has 3 marks " + "<br/> Option 2 has 2 marks " + "<br/> Option 3 has 1 marks " + "<br/> Other Options have 0 marks ";
            
        }
    }
}