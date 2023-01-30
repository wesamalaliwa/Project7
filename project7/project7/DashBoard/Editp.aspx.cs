using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        gymdbEntities2 obj = new gymdbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                var x = obj.PromoCodes.Find(id);
                code.Value = x.Code.ToString();
                Discount.Value = x.Discount.ToString();

                StartDate.Value = x.StartDate.ToString();
                StartDate.Value = x.StartDate.ToString();

                string start = obj.PromoCodes.FirstOrDefault(a => a.PromoCodeID == id).StartDate.ToString("yyyy-MM-dd");
                StartDate.Value = start;
                string end = obj.PromoCodes.FirstOrDefault(a => a.PromoCodeID == id).EndDate.ToString("yyyy-MM-dd");
                EndDate.Value = end;




            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["id"]);
            var x = obj.PromoCodes.Find(id);
            x.Code = code.Value.ToString();
            x.Discount = Convert.ToDecimal(Discount.Value);
            x.StartDate = Convert.ToDateTime(StartDate.Value);
            x.EndDate = Convert.ToDateTime(EndDate.Value);
            obj.SaveChanges();
            Response.Redirect("promocode.aspx");

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("promocode.aspx");
        }
    }
}
    