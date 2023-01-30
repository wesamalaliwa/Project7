using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class users : System.Web.UI.Page
    {
        gymdbEntities2   db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var id = Request.QueryString["id"];
            //int id1 = Convert.ToInt32(id);
            var promo = (from m in db.AspNetUsers
                         select new
                         {
                             m.Email,
                             m.PhoneNumber,
                             m.FirstName,
                             m.LastName,
                             m.Photo,
                         }
            ).ToList();

            GridView1.DataSource = promo;
            GridView1.DataBind();
        }
    }
}