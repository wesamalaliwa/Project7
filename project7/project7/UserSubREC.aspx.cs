using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using project7.DashBoard;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class UserSubREC : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            startDate.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));
            startDate.Value = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            int subID = int.Parse(Request.QueryString["id"]);
            string userid = User.Identity.GetUserId();
            if (userid == null)
            {
                Response.Redirect("Account/Login.aspx");
            }
            bool flag = true;

            foreach (var s in db.SubscriptionsCustomers)
            {
                if (s.UserID == userid)
                {
                    flag = false;
                    if (s.EndDate < DateTime.Now)
                    {
                        flag = true;
                    }

                }

            }



            if (flag)
            {

                DateTime startD = DateTime.Parse(startDate.Value.ToString());

                Subscription sub = db.Subscriptions.Find(subID);

                decimal fp;

                if (ViewState["price"] == null) { fp = sub.Price; }
                else
                {
                    fp = Convert.ToDecimal(ViewState["price"].ToString());
                }


                SubscriptionsCustomer subcus = new SubscriptionsCustomer();

                subcus.SubscriptionID = subID;
                subcus.UserID = userid;
                subcus.StartDate = startD;
                subcus.EndDate = startD.AddMonths(sub.SubscriptionInterval);
                subcus.Status = 0;
                subcus.finalPrice = fp;

                db.SubscriptionsCustomers.Add(subcus);
                db.SaveChanges();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
               "swal('Good job!', 'Your Request has been Reached sucsessfully We will Contact you soon', 'success')", true);

            }
            else
            {

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                 "swal('Warning!', 'You are already subscriped!', 'warning')", true);


            }




        }

        protected void applay_Click(object sender, EventArgs e)
        {
            string code = txtpromo.Value;
            int id = int.Parse(Request.QueryString["id"]);

            decimal pricee = db.Subscriptions.Find(id).Price;
            //var p = from item in db.PromoCodes where code == item.Code select item;

            PromoCode p = null;
            foreach (PromoCode pp in db.PromoCodes)
            {
                if (pp.Code == code)
                    p = pp;
            }
            if (p == null)
            {
                lblpromo.Text = "this code not exist ";
                lblnew.Text = pricee.ToString();
                ViewState["price"] = pricee;
            }
            else
            {
                lblnew.Text = (pricee - (pricee * p.Discount)).ToString();
                ViewState["price"] = pricee - (pricee * p.Discount);
            }



        }
    }
}