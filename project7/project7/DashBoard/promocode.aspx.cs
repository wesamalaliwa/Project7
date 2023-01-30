using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{ 
    public partial class WebForm4 : System.Web.UI.Page
    {

        gymdbEntities2 obj = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        

        int id = Convert.ToInt32(Request.QueryString["id"]);
            var x = obj.PromoCodes.Find(id);

            var promo = obj.PromoCodes.Select(m => new {
                m.PromoCodeID,
                m.Code,
                m.Discount,
                m.StartDate,
                m.EndDate,
                m.MaxUses

            }).ToList();



            GridView1.DataSource = promo;
            GridView1.DataBind();


        }

        protected void addpromo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addp.aspx");
        }


    }
}