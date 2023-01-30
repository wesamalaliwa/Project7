using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class userSubReq : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

            var subs = from item in db.SubscriptionsCustomers.ToList()
                       where item.Status == 0
                       select new
                       {
                           item.SubscriptionCustomerID,
                           item.AspNetUser.UserName,
                           item.Subscription.SubscriptionType,
                           item.StartDate,
                           item.EndDate,
                           item.Status,
                           item.PromoCode
                       };




            GridView1.DataSource = subs;
            GridView1.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton hd = (LinkButton)sender;
            HiddenField hf = (HiddenField)hd.FindControl("HiddenField1");

            int id = int.Parse(hf.Value);
            Label1.Text = Convert.ToString(id);
            SubscriptionsCustomer sub = db.SubscriptionsCustomers.Find(id);
            sub.Status = 1;

            //db.SubscriptionsCustomers.AddOrUpdate(sub);
            db.SaveChanges();

            //Response.Redirect("subscriptionsreq.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton hd = (LinkButton)sender;
            HiddenField hf = (HiddenField)hd.FindControl("HiddenField1");

            int id = Convert.ToInt32(hf.Value);

            SubscriptionsCustomer sub = db.SubscriptionsCustomers.Find(id);

            sub.Status = -1;

            //db.SubscriptionsCustomers.AddOrUpdate(sub);
            db.SaveChanges();
            //Response.Redirect("subscriptionsreq.aspx");

        }
    }
}