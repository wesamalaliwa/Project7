using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.GetUserName() != "qaisdd@gmail.com")
            {
                Response.Redirect("../Default.aspx");
            }
            else if (Context.User.Identity.GetUserName() == null)   
            {
                Response.Redirect("../Default.aspx");
            }
            var not = from su in db.SubscriptionsCustomers where su.Status==2 || su.Status==0 select new { su.AspNetUser.UserName, su.Status };
            nott.InnerHtml = "";
            foreach(var item in not)
            {
                string se = "";
                if (item.Status == 2) { se = "paused"; } else if (item.Status == 0) { se = "request"; }
                nott.InnerHtml += $" <a href = \"#\" class=\"dropdown-item\">\r\n  <h6 class=\"fw-normal mb-0\">{item.UserName}</h6>\r\n                                <small>{se}</small>\r\n                            </a>\r\n                            <hr class=\"dropdown-divider\">";
            }
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    var not = from su in db.SubscriptionsCustomers where su.Status == 1 || su.Status == -1 select new { su.AspNetUser.UserName, su.Status, su.Viewed };
        //    nott.InnerHtml = "";
        //    foreach (var item in not)
        //    {
        //        string se = "";
        //        if (item.Status == -1) { se = "paused"; } else if (item.Status == 1) { se = "request"; }

        //        string marker = "";
        //        if (!item.Viewed) { marker = "<span class='marker'>New</span>"; }

        //        nott.InnerHtml += $" <a href = \"#\" class=\"dropdown-item\" onclick='markNotificationAsViewed({item.Id})'>\r\n  <h6 class=\"fw-normal mb-0\">{item.UserName} {marker}</h6>\r\n                                <small>{se}</small>\r\n                            </a>\r\n                            <hr class=\"dropdown-divider\">";
        //    }
        //}
        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

    }

}