using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class AdminClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gymdbEntities2 db = new gymdbEntities2();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var x = db.PromoCodes.Find(id);

            var clas = db.Classes.Select(m => new {
                m.ClassID,
                m.Name,
                m.StartTime,
                m.EndTime,
                m.StartDate,
                m.EndDate,
                m.pic,
                m.Description,
                
              coachname=  m.Coach.FirstName +" "+ m.Coach.LastName,
                
            }).ToList();



            GridView1.DataSource = clas;
            GridView1.DataBind();
        }

        protected void addClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("addclass.aspx");
        }
    }
}