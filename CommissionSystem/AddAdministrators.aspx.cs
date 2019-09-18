using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.IO;
using System.Net;

namespace CommissionSystem
{
    public partial class AddAdministrators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void register_Click(object sender, EventArgs e)
        {

            String tfname = fname.Text.Trim();
            String tmname = mname.Text.Trim();
            String tlname = lname.Text.Trim();
            String temail = email.Text.Trim();
            String tpass = pass.Text.Trim();
            //String activationCode = Guid.NewGuid().ToString();
            if (String.IsNullOrEmpty(temail))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide an email address</div>";
            }
            else if (!temail.Contains('@'))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide a valid email address</div>";
            }
            else if (String.IsNullOrEmpty(tpass))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Password</div>";
            }
            else if (String.IsNullOrEmpty(tfname))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            //try to create an account
            else
            {
                //String status = Config.ObjNav.FnRegisterAdmin(tfname,temail,tpass);
                //String[] info = status.Split('*');
                //feedback.InnerHtml = "<div class='alert alert-" + info[0] + "'>" + info[1] + "</div>";
            }

        }
    }
}