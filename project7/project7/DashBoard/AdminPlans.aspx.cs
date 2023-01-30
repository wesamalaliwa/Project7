using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class AdminPlans : System.Web.UI.Page
    {
        gymdbEntities2  db = new gymdbEntities2();  
        protected void Page_Load(object sender, EventArgs e)
        {
            db.Subscriptions.ToList();
            GridView1.DataSource = db.Subscriptions.ToList();
            GridView1.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPlans.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Text = "";
            e.Row.Cells[1].Text = "ID";
            e.Row.Cells[2].Text = "Name";
            e.Row.Cells[3].Text = "Image";
            e.Row.Cells[4].Text = "Description";
        }
    }

}