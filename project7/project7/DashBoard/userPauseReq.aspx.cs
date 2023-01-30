using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class userPauseReq : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var post = from item in db.Pauses
            //           join i  in db.SubscriptionsCustomers 
            //           on item.SubscriptionCustomerID equals i.SubscriptionCustomerID
            //           where i.Status == 2
            //           select new
            //           {
                           
            //               item.SubscriptionsCustomer.SubscriptionCustomerID,
            //               item.pauseID,
            //               item.SubscriptionsCustomer.AspNetUser.FirstName,
            //               item.StartDate,
            //               item.EndDate,
                           
            //               interval = item.EndDate.Subtract(item.StartDate).Days + " days"

            //           };


            var post3 = from item in db.Pauses where item.SubscriptionsCustomer.Status == 2
                        select new
                        {

                            item.SubscriptionsCustomer.SubscriptionCustomerID,
                            item.pauseID,
                            item.SubscriptionsCustomer.AspNetUser.FirstName,
                            item.StartDate,
                            item.EndDate,

                            // interval = item.EndDate.Subtract(item.StartDate).Days + " days"
                            interval =   DbFunctions.DiffDays(item.StartDate , item.EndDate)
                        };

            
            var post2 = post3.ToList();
  
            GridView1.DataSource = post2;
            GridView1.DataBind();
        }

        protected void lb1_Click(object sender, EventArgs e)
        {
            LinkButton hd = (LinkButton)sender;
            HiddenField hfsub = (HiddenField)hd.FindControl("HiddenField1");
            HiddenField hfpause = (HiddenField)hd.FindControl("HiddenField2");


            int idpause = Convert.ToInt32(hfpause.Value);
            Pause pause = db.Pauses.Find(idpause);


            int days = pause.EndDate.Subtract(pause.StartDate).Days;
    

            pause.SubscriptionsCustomer.Status = 1;
            pause.SubscriptionsCustomer.EndDate =
            pause.SubscriptionsCustomer.EndDate.AddDays(days);
           
            

            //db.Pauses.AddOrUpdate(pause);
            db.SaveChanges();
            db.Pauses.Remove(pause);
            db.SaveChanges();

            Response.Redirect("userPauseReq.aspx");
        }

        protected void lb2_Click(object sender, EventArgs e)
        {
            LinkButton hd = (LinkButton)sender;
            HiddenField hf = (HiddenField)hd.FindControl("HiddenField1");
            HiddenField hfpause = (HiddenField)hd.FindControl("HiddenField2");

            int idpause = Convert.ToInt32(hfpause.Value);
            Pause pause = db.Pauses.Find(idpause);
            int id = int.Parse(hf.Value);

            SubscriptionsCustomer sub = db.SubscriptionsCustomers.Find(id);


            pause.SubscriptionsCustomer.Status = 1;
          


            db.Pauses.Remove(pause);

            
            db.SaveChanges();

            Response.Redirect("userPauseReq.aspx");
        }
    }
}
