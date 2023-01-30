using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project7
{
   
    public partial class WebForm12 : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = (from wesam in db.Coaches
                     select new
                     {
                         wesam.FirstName,
                         wesam.LastName,



                     }).ToList();
            GridView1.DataSource = x;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var textd = TextBox1.Text;
            var x = (from wesam in db.Coaches
                     where wesam.FirstName.Contains(textd)
                     select new
                     {
                         wesam.FirstName,
                         wesam.LastName,



                     }).ToList();
            GridView1.DataSource = x;
            GridView1.DataBind();

          
        }
    }
}