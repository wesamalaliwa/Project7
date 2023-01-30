using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class AddPlans : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Add_Click(object sender, EventArgs e)
        {

            Subscription plan = new Subscription();

            string folderPath = Server.MapPath("..\\DashBoard\\img\\");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            img.Text = Path.GetFileName(FileUpload1.FileName);



            plan.SubscriptionType = TextBox1.Text;
            plan.SubscriptionDesc = desc.Value;
            plan.Price = int.Parse(TextBox2.Text);
            plan.Subscriptionpic = "..\\DashBoard\\img\\" + img.Text;
            plan.SubscriptionInterval = int.Parse(DropDownList1.SelectedValue);
            db.Subscriptions.Add(plan);
            db.SaveChanges();

            Response.Redirect("AdminPlans.aspx");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}