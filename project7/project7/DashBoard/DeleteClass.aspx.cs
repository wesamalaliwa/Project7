using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class DeleteClass : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["id"]);
            var clas = db.Classes.Find(id);


            txtName.Value = clas.Name;
            txtdesc.Value = clas.Description;
            prevStartTime.InnerText = "Start Time: " + clas.StartTime.ToString();
            prevEndTime.InnerText = "End Time: " + clas.EndTime.ToString();

            prevStartDate.InnerText = "Start Date: " + clas.StartDate.ToString();
            prevEndDate.InnerText = "End Date: " + clas.EndDate.ToString();

            prevDays.InnerText = "Days of week: " + clas.DaysOfWeek.ToString();
            image.Src = clas.pic;
        }

        protected void DeleteClass_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var clas = db.Classes.Find(id);

            db.Classes.Remove(clas);
            db.SaveChanges();
            Response.Redirect("AdminClasses.aspx");
        }
    }
}