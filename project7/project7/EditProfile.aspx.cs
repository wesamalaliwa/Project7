using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Xml;
using static System.Net.Mime.MediaTypeNames;
using Microsoft.AspNet.Identity;

namespace project7
{
    public partial class EditProfile : System.Web.UI.Page
    {
       gymdbEntities2 db = new gymdbEntities2();    
        protected void Page_Load(object sender, EventArgs e)
        {
//            Session["id"] = /*User.Identity.GetUserId()*/ "da63073b-0dd6-43b7-9ac1-b3640c6002fb";
//;
//            //var data = db.AspNetUsers.ToList();
//            if (!IsPostBack)
//            {
//                var ss = db.AspNetUsers.Find(Session["id"]);
//                Label1.Text = ss.FirstName;
//                Label2.Text = ss.LastName;
//                Label3.Text = ss.Email;
//                Label4.Text = ss.PhoneNumber;
//                Label5.Text = ss.FirstName + " " + ss.LastName ;
//                Image1.ImageUrl = ss.Photo;
//                if (ss.Photo == "" || ss.Photo == null) { Image1.ImageUrl = "img\\logo.png"; }
//                else {Image1.ImageUrl = ss.Photo; }

//            };
            
        }
    }
}