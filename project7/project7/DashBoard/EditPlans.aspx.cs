using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class EditPlans : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var iid = Request.QueryString["id"];
                int id1 = Convert.ToInt32(iid);
                //int ID = int.Parse(IDC.Text);
                var editP = db.Subscriptions.Find(id1);
                if (editP != null)
                {

                    PName.Text = editP.SubscriptionType;
                    desc.Value = editP.SubscriptionDesc;
                    price.Text = editP.Price.ToString();
                    DropDownList1.SelectedValue = editP.SubscriptionInterval.ToString();
                    editP.Subscriptionpic = "~/img/" + FileUpload1.FileName;

                }

            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            var iid = Request.QueryString["id"];
            int id1 = Convert.ToInt32(iid);
            
            var editP = db.Subscriptions.Find(id1);
            if (editP != null)
            {
                editP.SubscriptionType = PName.Text;
                editP.SubscriptionDesc = desc.Value;
                editP.Price = decimal.Parse(price.Text);
                editP.SubscriptionInterval = Convert.ToInt32(DropDownList1.SelectedValue);
                //editP.Subscriptionpic = "~/img/" + FileUpload1.FileName;
                db.SaveChanges();


            }
            string folderPath = Server.MapPath("~/img/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                editP.Subscriptionpic = "~/img/" + FileUpload1.FileName;
                db.SaveChanges();
            }

            Response.Redirect("AdminPlans.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPlans.aspx");
        }
    }
}