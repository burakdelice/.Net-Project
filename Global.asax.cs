﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace BBS635_Demo1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["numvisitors"] = 0;
        }

        void Session_Start(object sender, EventArgs e)
        {
            Session["username"] = "Burak";
            if(Application["numvisitors"] != null)
            {
                int currentNum = Int32.Parse(Application["numvisitors"].ToString());
                ++currentNum;
                Application["numvisitors"] = currentNum;
            }
        }
    }
}