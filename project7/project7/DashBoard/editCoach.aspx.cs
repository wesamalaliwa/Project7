using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class editCoach : System.Web.UI.Page
    {
        gymdbEntities2 db2 = new gymdbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                int id = Convert.ToInt32(Request.QueryString["ID"]);

                var cu = db2.Coaches.FirstOrDefault(a => a.CoachID == id);

                Fname.Text = cu.FirstName;
                Lname.Text = cu.LastName;
                email.Text = cu.Email;
                phone.Text = cu.Phone;
                TextBox1.Text = cu.Description;
                ViewState["image"] = cu.pic;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Coach db = new Coach();
            int id = Convert.ToInt32(Request.QueryString["ID"]);

            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {

                db.FirstName = Fname.Text;
                db.LastName = Lname.Text;
                db.Email = email.Text;
                db.Phone = phone.Text;
                db.Description = TextBox1.Text;

                string image = "";
                if (FileUpload3.HasFile)

                {
                    image = "/img/" + FileUpload3.FileName;
                    FileUpload3.SaveAs(Server.MapPath("/img/") + FileUpload3.FileName);
                }

                using (gymdbEntities2 db2 = new gymdbEntities2())
                {
                    Coach obj1 = (from p in db2.Coaches where p.CoachID == id select p).FirstOrDefault();

                    obj1.FirstName = Fname.Text;
                    obj1.LastName = Lname.Text;
                    obj1.Email = email.Text;
                    obj1.Phone = phone.Text;
                    obj1.Description = TextBox1.Text;
                    obj1.pic = image;
                    db2.SaveChanges();
                    Response.Redirect("AdminCoaches.aspx");
                }
            }
        }
    }

}
    