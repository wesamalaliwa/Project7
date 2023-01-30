using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new gymdbEntities2())
            {

                var cc1 = (from item in db.SubscriptionsCustomers select item.SubscriptionCustomerID).Count().ToString();
                totalsub.InnerText = cc1;


                var cc2 = (from item in db.AspNetUsers select item.Id).Count().ToString();
                totaluser.InnerText = cc2;


                var cc3 = (from item in db.Coaches select item.CoachID).Count().ToString();
                totalcoach.InnerText = cc3;


                var cc4 = (from item in db.Classes select item.ClassID).Count().ToString();
                totalclasses.InnerText = cc4;





                //status chart
                var count0 = (from item in db.SubscriptionsCustomers where item.Status == 0 select item).Count().ToString();
                var count1 = (from item in db.SubscriptionsCustomers where item.Status == 1 select item).Count().ToString();
                var count2 = (from item in db.SubscriptionsCustomers where item.Status == 2 select item).Count().ToString();

                var count3 = (from item in db.AspNetUsers select item.Id).Count().ToString();
                var count4 = (from item in db.SubscriptionsCustomers select item.SubscriptionCustomerID).Count().ToString();

                var reg = Convert.ToInt32(count3) - Convert.ToInt32(count4);

                int[] array = new int[4] { Convert.ToInt32(count0), Convert.ToInt32(count1), Convert.ToInt32(count2), reg };
                string[] name = { "Subscriptions-ends", "Pause", "Subscriptions-active ", "registered only" };



                var xValues = name;
                var yValues = array;

                hidden.Value = JsonConvert.SerializeObject(yValues);
                hidden1.Value = JsonConvert.SerializeObject(xValues);






                // subse chart

                var c = (from item in db.Subscriptions where item.SubscriptionType == "premium" select item).Count().ToString();
                var c1 = (from item in db.Subscriptions where item.SubscriptionType == "Gold" select item).Count().ToString();
                var c2 = (from item in db.Subscriptions where item.SubscriptionType == "Basic" select item).Count().ToString();

                string[] arr = { c, c1, c2,};
                string[] n = { "premium", "Gold", "Basic", };


                hidden11.Value = JsonConvert.SerializeObject(n);
                hidden2.Value = JsonConvert.SerializeObject(arr);

               

            }
        }
    }
}
    