using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.User_Home_Page
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack) return;
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())

            {
                if (Request.QueryString["AdminID"] != null)
                    {
                        int AdminID = Convert.ToInt32(Request.QueryString["AdminID"]);
                        var add = db.AdminRegTbls.Where(v => v.AdminID == AdminID).FirstOrDefault();
                        if (add != null)
                        {
                            name.Text = add.AdminName;
                            password.Text = add.AdminPassword;
                            email.Text = add.AdminEmail;
                        }
                    }

                
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
           
            using(PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                AdminRegTbl AT = null;
                if (Request.QueryString["AdminID"] == null)
                {
                    AT = new AdminRegTbl();
                    var EmailCheck = db.GetEmmail(email.Text).ToList();
                    if (EmailCheck.Count > 0)
                    {
                        EmailDuplicationCheck.InnerHtml = "Email Already Exist";
                        return;
                    }
                }
                else
                {
                    int AdminID = Convert.ToInt32(Request.QueryString["AdminID"]);
                    AT = db.AdminRegTbls.FirstOrDefault(v => v.AdminID == AdminID);
                    var EmailCheck = db.GetEmmail(email.Text).ToList();
                    if (AT.AdminEmail != email.Text)
                    {
                        if (EmailCheck.Count > 0)
                        {
                            EmailDuplicationCheck.InnerHtml = "Email Already Exist";
                            return;
                        }
                    }

                }
                AT.AdminName = name.Text;
                AT.AdminPassword = password.Text;
                AT.AdminEmail = email.Text;
                if (Request.QueryString["AdminID"] == null)
                {
                    db.AdminRegTbls.Add(AT);
                }
                db.SaveChanges();
                Response.Redirect("Adminlist.aspx");
                //AdminRegTbl AdminTbl = new AdminRegTbl();
                //AdminTbl.AdminName = name.Text;
                //AdminTbl.AdminPassword = password.Text;
                //AdminTbl.AdminEmail = email.Text;
                //db.AdminRegTbls.Add(AdminTbl);
                //db.SaveChanges();
                //Response.Write("Record Save");
            }
        }
        //public static string EncodePassword(string password)
        //{
        //    try
        //    {
        //        byte[] encData_byte = new byte[password.Length];
        //        encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
        //        string encodedData = Convert.ToBase64String(encData_byte);
        //        return encodedData;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error in base64Encode" + ex.Message);
        //    }
        //}
        public string DecodeFrom64(string encodedData)
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encodedData);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }
    }
}