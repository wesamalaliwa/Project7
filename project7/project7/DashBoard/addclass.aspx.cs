using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class addclass : System.Web.UI.Page
    { 
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl.DataSource = db.Coaches.ToList();
                ddl.DataTextField = "FirstName";
                ddl.DataValueField = "CoachID";
                ddl.DataBind();
            }

        }
        protected void AddClass_Click(object sender, EventArgs e)
        {
           
            //string name = txtName.Value;
            //string desc = txtdesc.Value;
            //TimeSpan startT = TimeSpan.Parse(startTime.Value.ToString());
            //TimeSpan endT = TimeSpan.Parse(endTime.Value.ToString());
            //DateTime startD = DateTime.Parse(startDate.Value.ToString());
            //DateTime endD = DateTime.Parse(endDate.Value.ToString());
            string pic = "";



            //Response.Write(pic);
            string days = "";
            foreach (ListItem l in CBdays.Items)
            {

                if (l.Selected)
                {
                    days += l.Text + ",";
                }
                else
                {
                    days += "none,";
                }

            }

            //days = days.Substring(0, days.Length - 1);



            //    Class c = new Class();
            //c.ClassID = 222;
            //    c.Name = name;
            //    c.StartDate = startD;
            //    c.EndDate = endD;
            //    c.StartTime = startT;
            //    c.EndTime = endT;
            //    c.pic = pic;
            //    c.DaysOfWeek = days;
            //    c.Description = desc;
            //    c.CoachID = int.Parse(ddl.SelectedValue);
            //    db.Classes.Add(c);
            //    db.SaveChanges();
            Class newClass = new Class();
           
            string[] test = startTime.Value.ToString().Split(':');
            string time = test[0] + ":" + test[1];
            TimeSpan start1= TimeSpan.Parse(time);
            string[] test1 = endTime.Value.ToString().Split(':');
            TimeSpan x = new TimeSpan(Convert.ToInt32 (test1[0]), Convert.ToInt32(test1[1]), 00);

            if (txtName.Value != null && startDate.Value != null && endDate.Value != null && txtdesc.Value != null && startTime.Value != null && endTime.Value != null) 

            {

                if (FUpic.HasFile)
                {
                    pic = "/pic/" + FUpic.FileName;
                    FUpic.SaveAs(Server.MapPath("/pic/") + FUpic.FileName);
                    //Response.Write()
                }
                string startDate1 = Convert.ToDateTime(startDate.Value).ToString("yyyy-MM-dd");
                string endDate1 = Convert.ToDateTime(endDate.Value).ToString("yyyy-MM-dd");

                newClass.Name = txtName.Value;
                newClass.StartDate =Convert.ToDateTime(startDate1) ;
                newClass.EndDate = Convert.ToDateTime(endDate1); 
                newClass.Description = "ddd";
                newClass.DaysOfWeek = days;
                newClass.StartTime = start1;
                newClass.EndTime = x;
                newClass.pic = pic;
                newClass.CoachID = Convert.ToInt32(ddl.SelectedValue);
                db.Classes.Add(newClass);
                db.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);

            }
            else
            {
                return;
            }


        }
    }
}
