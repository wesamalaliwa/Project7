using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class pause : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["subid"]);
            var sub =  db.SubscriptionsCustomers.Find(id);


            start.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));
            end.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));
            // Set the default date to the current date

            start.Attributes.Add("max", sub.EndDate.ToString("yyyy-MM-dd"));
            end.Attributes.Add("max", sub.EndDate.ToString("yyyy-MM-dd"));
            //start.Value = sub.EndDate.ToString("yyyy-MM-dd");



            //end.Value = sub.EndDate.ToString("yyyy-MM-dd");
        }
        protected void btnPause_Click(object sender, EventArgs e)
        {
            DateTime startDate = DateTime.Parse(start.Value.ToString());
            DateTime endDate = DateTime.Parse(end.Value.ToString());

            int id = int.Parse(Request.QueryString["subid"]);
            
            var sub = db.SubscriptionsCustomers.Find(id);
            sub.Status = 2;
           

            Pause p = new Pause();
            p.StartDate = startDate; 
            p.EndDate = endDate;
            p.SubscriptionCustomerID= id;


           db.Pauses.Add(p);

            db.SaveChanges();

        }
    }
}