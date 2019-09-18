using System;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Web.Script.Serialization;
using CommissionSystem.CuePortal;
namespace CommissionSystem
{
    public partial class Administrators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var nav = new Config().ReturnNav();
            if (!IsPostBack)
            {
                var pcode = nav.postcodes;
                postcode.DataSource = pcode;
                postcode.DataTextField = "City";
                postcode.DataValueField = "Code";
                postcode.DataBind();
            }
        }
        protected void register_Click(object sender, EventArgs e)
        {

            string myfname = txtfname.Text.Trim();
            string mypass = txtpass.Text.Trim();
            string mylname = txtlname.Text.Trim();
            string myemail = txtemail.Text.Trim();
            string myaddres = txtxaddress.Text.Trim();
            string mymname = txtmname.Text.Trim();
            string myphone = txtphone.Text.Trim();
            string mypostcode = postcode.SelectedValue;

            //Text Validation on user input
            if (string.IsNullOrEmpty(myemail))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide an email address</div>";
            }
            else if (!myemail.Contains('@'))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide a valid email address</div>";
            }
            else if (string.IsNullOrEmpty(mypass))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Password</div>";
            }
            else if (string.IsNullOrEmpty(myfname))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            //try to create an account
            else
            {
                    string status =
                       Config.ObjNav.FnRegisterAdmin(myfname, mypass, mylname, myemail, myaddres, mymname, myphone, mypostcode);
                    string[] info = status.Split('*');

                  feedback.InnerHtml = "New Administrator Already Added";

                }

            }
        }
    
}