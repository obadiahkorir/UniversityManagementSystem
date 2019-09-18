using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommissionSystem
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                var nav = new Config().ReturnNav();
                if (!IsPostBack)
                  {
                    List<String> genders = new List<string>();
                    genders.Add("Male");
                    genders.Add("Female");
                    gender.DataSource = genders;
                    gender.DataBind();
                    {
                        List<String> sponsors = new List<string>();
                       sponsors.Add("Self Sponsored");
                       sponsors.Add(" Government Sponsored");
                        spon.DataSource = sponsors;
                        spon.DataBind();
                    }
                    {
                        var program = nav.Programs;
                        Programmes.DataSource = program;
                        Programmes.DataTextField = "Description";
                        Programmes.DataValueField = "Code";
                    }
                    {
                        var count = nav.homecounties;
                        counties.DataSource = count;
                        counties.DataTextField = "County_Name";
                        counties.DataValueField = "Code";
                        counties.DataBind();
                    }
                    {
                        var nations = nav.countries;
                        Nationality.DataSource = nations;
                        Nationality.DataTextField = "Name";
                        Nationality.DataValueField = "Code";
                        Nationality.DataBind();
                    }
                    {
                        var disabilit = nav.DisabilityTypes;
                        disable.DataSource = disabilit;
                        disable.DataTextField = "Description";
                        disable.DataValueField = "Code";
                        disable.DataBind();
                    }
                    {
                        var proglevel = nav.programdomains;
                        programmelevel.DataSource = proglevel;
                        programmelevel.DataTextField = "Description";
                        programmelevel.DataValueField = "Code";
                        programmelevel.DataBind();
                    }
                    {
                        var university = nav.Universities;
                        univer.DataSource = university;
                        univer.DataTextField = "University_Name";
                        univer.DataValueField = "University_Code";
                        univer.DataBind();
                    }
                }
            }
        }
        protected void register_Click(object sender, EventArgs e)
        {
               string tfname = fname.Text.Trim();
               string tlname = lname.Text.Trim();
               string tmname = mname.Text.Trim();
               string tgender = gender.Text.Trim();
               string tid    = id_no.Text.Trim();
               string tdob = dob.Text.Trim();
               string tcounty = counties.SelectedValue;
               string tyear =    year.Text.Trim();
               string tsponsor = spon.Text.Trim();
               string tnation =  Nationality.SelectedValue;
               string tprogram = Programmes.SelectedValue;
               string tprog_level = programmelevel.Text.Trim();
               string tadmin_date = admin_date.Text.Trim();
               string tdisable = disable.SelectedValue;
               string tethnic =  ethnic.Text.Trim();
               string tuniv = univer.Text.Trim();
               string tacademic = academic.Text.Trim();
               string tstudy = study.Text.Trim();
               

            if (String.IsNullOrEmpty(tfname))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your First Name</div>";
            }
            else if (String.IsNullOrEmpty(tlname))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Last Name</div>";
            }
            else if (String.IsNullOrEmpty(tmname))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tid))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tdob))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tcounty))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tyear))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tprogram))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tprog_level))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            else if (String.IsNullOrEmpty(tadmin_date))
            {
                feedback.InnerHtml = "<div class='alert alert-danger'>Please provide your Full Names/div>";
            }
            //try to create an account
            else
            {
               bool status = Config.ObjNav.FnRegisterStudent(tfname, tmname, tlname, tid, int.Parse (tgender), DateTime.Parse(tdob), tcounty, DateTime.Parse(tadmin_date), tprog_level , tprogram , int.Parse(tsponsor),
                    tnation, tdisable , tethnic , tuniv, tyear , tstudy );
                //string[] info = status.Split('*');
                //feedback.InnerHtml = "<div class='alert alert-" + info[0] + "'>" + info[1] + "</div>";
            }

        }
    }
}