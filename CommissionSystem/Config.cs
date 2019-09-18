using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using CommissionSystem.NavOData;
using CommissionSystem.CuePortal;

namespace CommissionSystem
{
    public class Config
    {
        public NAV ReturnNav()
        {
            NAV nav = new NAV(new Uri(ConfigurationManager.AppSettings["ODATA_URI"]))
            {
                Credentials =
                           new NetworkCredential(ConfigurationManager.AppSettings["W_USER"],
                               ConfigurationManager.AppSettings["W_PWD"], ConfigurationManager.AppSettings["DOMAIN"])
            };
            return nav;
        }
        public static CuePortal.CuePortal ObjNav
        {
            get
            {
                var ws = new CuePortal.CuePortal();

                try
                {
                    var credentials = new NetworkCredential(ConfigurationManager.AppSettings["W_USER"],
                        ConfigurationManager.AppSettings["W_PWD"], ConfigurationManager.AppSettings["DOMAIN"]);
                    ws.Credentials = credentials;
                    ws.PreAuthenticate = true;

                }
                catch (Exception ex)
                {
                    ex.Data.Clear();
                }
                return ws;
            }
        }
       

        public class Languages
        {
            public String languageCode;
            public String languageName;

            public Languages(String code, String name)
            {
                this.languageCode = code;
                this.languageName = name;
            }
        }
    }
}