using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class AdminCoaches : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = from Coach in db.Coaches select Coach;
            db.Coaches.ToList();
            GridView1.DataSource = db.Coaches.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCoaches.aspx");
        }
    }
}