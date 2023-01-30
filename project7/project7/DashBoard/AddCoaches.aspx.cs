using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class AddCoaches : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Coach db1 = new Coach();
            db1.FirstName = Fname.Text;
            db1.LastName = Lname.Text;
            db1.Email = email.Text;
            db1.Phone = (phone.Text);
            db1.Description = TextBox1.Text;
            string image = "";
            if (FileUpload3.HasFile)
            {
                image = "/img/" + FileUpload3.FileName;
                FileUpload3.SaveAs(Server.MapPath("/img/") + FileUpload3.FileName);
            }
            db1.pic = image;
            db.Coaches.Add(db1);
            db.SaveChanges();
            Response.Redirect("AdminCoaches.aspx");

        }
    }
}