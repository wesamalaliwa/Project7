using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        gymdbEntities2 db4 = new gymdbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);


                var dl = db4.Coaches.FirstOrDefault(a => a.CoachID == id);


                Fname.InnerText = dl.FirstName;
                Lname.InnerText = dl.LastName;
                Email.InnerText = dl.Email;
                Phone.InnerText = dl.Phone;
                Desc.InnerText = dl.Description;

                ViewState["image"] = dl.pic;
                Image1.ImageUrl = dl.pic;

            }
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
              var dl = db4.Coaches.FirstOrDefault(a => a.CoachID == id);
               db4.Coaches.Remove(dl);
               db4.SaveChanges();
               Response.Redirect("AdminCoaches.aspx");
        }

        protected void Can_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCoaches.aspx");
        }

        //protected void delete_Click(object sender, EventArgs e)
        //{
        //    int id = Convert.ToInt32(Request.QueryString["ID"]);
        //    var dl = db4.Coaches.FirstOrDefault(a => a.CoachID == id);
        //    db4.Coaches.Remove(dl);
        //    db4.SaveChanges();
        //    Response.Redirect("AdminCoaches.aspx");
        //}

        //protected void cancel_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("AdminCoaches.aspx");
        //}
    }
}