using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class editclasses : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                var clas = db.Classes.Find(id);


                txtName.Value = clas.Name;
                txtdesc.Value = clas.Description;
                prevStartTime.InnerText = "Prevuse Time: " + clas.StartTime.ToString();
                prevEndTime.InnerText = "Prevuse Time: " + clas.EndTime.ToString();

                prevStartDate.InnerText = "Prevuse Date: " + clas.StartDate.ToString();
                prevEndDate.InnerText = "Prevuse Date: " + clas.EndDate.ToString();

                prevDays.InnerText = "Prevuse Date: " + clas.DaysOfWeek.ToString();
                //startTime.Value = clas.StartTime;
                //endTime.Value= clas.EndTime;
                //startDate.Value = clas.StartDate;
                //endDate.Value = clas.EndDate;


            }
        }

        protected void EditClass_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var clas = db.Classes.Find(id);

            //string name = txtName.Value;
            //string desc = txtdesc.Value;
            //TimeSpan startT = TimeSpan.Parse(startTime.Value.ToString());
            //TimeSpan endT = TimeSpan.Parse(endTime.Value.ToString());
            //DateTime startD = DateTime.Parse(startDate.Value.ToString());
            //DateTime endD = DateTime.Parse(endDate.Value.ToString());
            string pic = "";


            //if (FUpic.HasFile)
            //{
            //    pic = "/pic/" + FUpic.FileName;
            //    FUpic.SaveAs(Server.MapPath("pic") + FUpic.FileName);
            //}


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
           
          

            days = days.Substring(0, days.Length - 1);




            string xx = startDate.Value;
            clas.Name = txtName.Value;
            if(startDate.Value != "") {
                string startDate1 = Convert.ToDateTime(startDate.Value).ToString("yyyy-MM-dd");
                clas.StartDate = Convert.ToDateTime(startDate1);
            }
            if (endDate.Value != "")
            {
                string endDate1 = Convert.ToDateTime(endDate.Value).ToString("yyyy-MM-dd");

                clas.EndDate = Convert.ToDateTime(endDate1);
            }
            clas.Description = "ddd";
            clas.DaysOfWeek = days;
            if(startTime.Value != "") {
                string[] test = startTime.Value.ToString().Split(':');
                string time = test[0] + ":" + test[1];
                TimeSpan start1 = TimeSpan.Parse(time);
                clas.StartTime = start1;
            }
            if(endTime.Value != "") {
                string[] test1 = endTime.Value.ToString().Split(':');
                TimeSpan x = new TimeSpan(Convert.ToInt32(test1[0]), Convert.ToInt32(test1[1]), 00);
                clas.EndTime = x;
            }
            if (FUpic.HasFile) {
                clas.pic = pic;
                FUpic.SaveAs(Server.MapPath("pic") + FUpic.FileName);

            }

            db.SaveChanges();
        }
    }
}