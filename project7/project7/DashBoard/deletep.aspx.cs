using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class WebForm7 : System.Web.UI.Page
    {

        gymdbEntities2 obj = new gymdbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                var x = obj.PromoCodes.Find(id);
                code.InnerHtml = x.Code.ToString();
                Discount.InnerHtml = x.Discount.ToString();
                string start = obj.PromoCodes.FirstOrDefault(a => a.PromoCodeID == id).StartDate.ToString("yyyy-MM-dd");
                StartDate.InnerText = start;
                string end = obj.PromoCodes.FirstOrDefault(a => a.PromoCodeID == id).EndDate.ToString("yyyy-MM-dd");
                EndDate.InnerText = end;
                MaxUses.InnerHtml = x.MaxUses.ToString();

            }
        }
        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("promocode.aspx");

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var x = new PromoCode { PromoCodeID = id };
            obj.Entry(x).State = EntityState.Deleted;
            obj.SaveChanges();
            Response.Redirect("promocode.aspx");

        }
    }
}
    