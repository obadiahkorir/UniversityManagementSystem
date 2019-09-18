using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommissionSystem
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_OnClick(object sender, EventArgs e)
        {
            String tUsername = username.Text.Trim();
            String tPassword = password.Text.Trim();
            var nav = new Config().ReturnNav();
            var users = nav.UniversityUsers.Where(r => r.Email == tUsername && r.Password == tPassword);
            Boolean exists = false;
            foreach (var user in users)
            {
                exists = true;
                Session["email"] = user.Email;
                Session["name"] = user.Name;
                Session["type"] = user.UserType;
            }
            if (!exists)
            {

                var users1 = nav.UniversityUsers.Where(r => r.Email == tUsername && r.Password == tPassword);
                foreach (var user in users1)
                {
                    exists = true;
                    Session["email"] = user.Email;
                    if (String.IsNullOrEmpty(Convert.ToString(Session["email"]).Trim()))
                        Session["email"] = user.Email;
                    Session["name"] = user.Name;

                }
            }
            if (!exists)
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>A user with the entered credentials does not exist<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
            }
            else
            {
                //username.Text = "";
                //password.Text = "";
                ////determine if its an employee or an applicant
                //Session["type"] = "0";
                //try
                //{
                //    var employees = nav.Employees.Where(r => r.ID_Number == Convert.ToString(Session["idNo"]));
                //    foreach (var employee in employees)
                //    {
                //        Session["type"] = "1";//user is an employee
                //    }
                //}
                //catch (Exception t) { }
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}