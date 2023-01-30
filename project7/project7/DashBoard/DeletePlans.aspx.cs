using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7.DashBoard
{
    public partial class DeletePlans : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var iid = Request.QueryString["id"];
                int id1 = Convert.ToInt32(iid);
                //int ID = int.Parse(IDC.Text);
                var Pdelete = db.Subscriptions.Find(id1);
                if (Pdelete != null)
                {
                    Pname.Value = Pdelete.SubscriptionType;
                    SubInterval.Value = Pdelete.SubscriptionInterval.ToString();
                    pDesc.Value = Pdelete.SubscriptionDesc.ToString();
                    PRice.Value = Pdelete.Price.ToString();
                    //DropDownList1.SelectedValue=custumer.citys.ToString();



                }

            }
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            var iid = Request.QueryString["id"];
            int id1 = Convert.ToInt32(iid);
            //int ID = int.Parse(IDC.Text);
            var dePlane = db.Subscriptions.Find(id1);
            if (dePlane != null)
            {
                db.Subscriptions.Remove(dePlane);
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