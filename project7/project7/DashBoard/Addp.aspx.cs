using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        gymdbEntities2 obj = new gymdbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the minimum date to the current date
            StartDate.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));
            EndDate.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));
            // Set the default date to the current date
            StartDate.Value = DateTime.Now.ToString("yyyy-MM-dd");
            EndDate.Value = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected void add_Click(object sender, EventArgs e)
        {
            PromoCode add = new PromoCode();
            add.Code = code.Value;
            add.Discount = decimal.Parse(Discount.Value);
            add.StartDate = Convert.ToDateTime(StartDate.Value);
            add.EndDate = Convert.ToDateTime(EndDate.Value);
            obj.PromoCodes.Add(add);
            obj.SaveChanges();
            Response.Redirect("promocode.aspx");
        }
        protected void cancel_Click(object sender, EventArgs e)
        {

            Response.Redirect("promocode.aspx");

        }

    }
}