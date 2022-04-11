using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality_Prediction.Admin
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack) return;
            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())

            {
                if (Request.QueryString["CustomerID"] != null)
                {
                    int CustomerID = Convert.ToInt32(Request.QueryString["CustomerID"]);
                    var addcust = db.CustRegTbls.Where(v => v.CustomerID == CustomerID).FirstOrDefault();
                    if (addcust != null)
                    {
                        fname.Text = addcust.FirstName;
                        lname.Text = addcust.LastName;
                        password.Text = addcust.Password;
                        email.Text = addcust.Email;
                    }
                }


            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {

            using (PersonalityPredictionEntities db = new PersonalityPredictionEntities())
            {
                CustRegTbl CT = null;
                if (Request.QueryString["CustomerID"] == null)
                {
                    CT = new CustRegTbl();
                    var CustomerEmailCheck = db.GetCustomerEmail(email.Text).ToList();
                    if (CustomerEmailCheck.Count > 0)
                    {
                        EmailDuplicationCheck.InnerHtml = "Email Already Exist";
                        return;
                    }
                }
                else
                {
                    int CustomerID = Convert.ToInt32(Request.QueryString["CustomerID"]);
                    CT = db.CustRegTbls.FirstOrDefault(v => v.CustomerID == CustomerID);
                    var CustomerEmailCheck = db.GetCustomerEmail(email.Text).ToList();
                    if (CT.Email != email.Text)
                    {
                        if (CustomerEmailCheck.Count > 0)
                        {
                            EmailDuplicationCheck.InnerHtml = "Email Already Exist";
                            return;
                        }
                    }

                }
                CT.FirstName = fname.Text;
                CT.LastName = lname.Text;

                CT.Password = password.Text;
                CT.Email = email.Text;
                if (Request.QueryString["CustomerID"] == null)
                {
                    db.CustRegTbls.Add(CT);
                }
                db.SaveChanges();
                Response.Redirect("CustomerList.aspx");
                //AdminRegTbl AdminTbl = new AdminRegTbl();
                //AdminTbl.AdminName = name.Text;
                //AdminTbl.AdminPassword = password.Text;
                //AdminTbl.AdminEmail = email.Text;
                //db.AdminRegTbls.Add(AdminTbl);
                //db.SaveChanges();
                //Response.Write("Record Save");
            }
        }
        public static string EncodePassword(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }
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