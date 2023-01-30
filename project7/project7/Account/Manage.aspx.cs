using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.BuilderProperties;
using Microsoft.Owin.Security;
using Owin;
using project7.Models;

namespace project7.Account
{
    public partial class Manage : System.Web.UI.Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        Comment feed = new Comment();
        protected string SuccessMessage
        {
            get;
            private set;
        }

        private bool HasPassword(ApplicationUserManager manager)
        {
            return manager.HasPassword(User.Identity.GetUserId());
        }

        public bool HasPhoneNumber { get; private set; }

        public bool TwoFactorEnabled { get; private set; }

        public bool TwoFactorBrowserRemembered { get; private set; }

        public int LoginsCount { get; set; }

        protected void Page_Load()
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            HasPhoneNumber = String.IsNullOrEmpty(manager.GetPhoneNumber(User.Identity.GetUserId()));

            // Enable this after setting up two-factor authentientication
            //PhoneNumber.Text = manager.GetPhoneNumber(User.Identity.GetUserId()) ?? String.Empty;

            TwoFactorEnabled = manager.GetTwoFactorEnabled(User.Identity.GetUserId());

            LoginsCount = manager.GetLogins(User.Identity.GetUserId()).Count;

            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            if (!IsPostBack)
            {
                // Determine the sections to render
                if (HasPassword(manager))
                {
                    ChangePassword.Visible = true;
                }
                else
                {
                    //CreatePassword.Visible = true;
                    ChangePassword.Visible = false;
                }

                // Render success message
                var message = Request.QueryString["m"];
                if (message != null)
                {
                    // Strip the query string from action
                    Form.Action = ResolveUrl("~/Account/Manage");

                    SuccessMessage =
                        message == "ChangePwdSuccess" ? "Your password has been changed."
                        : message == "SetPwdSuccess" ? "Your password has been set."
                        : message == "RemoveLoginSuccess" ? "The account was removed."
                        : message == "AddPhoneNumberSuccess" ? "Phone number has been added"
                        : message == "RemovePhoneNumberSuccess" ? "Phone number was removed"
                        : String.Empty;
                    successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);

                }
            }
        }
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    div2.Visible = false;
        //    string id = Context.User.Identity.GetUserId();
        //    var allIds = db.AspNetUsers.Select(x => x.Id);
        //    var ss = db.AspNetUsers.Find(id);
        //    Label1.Text = ss.FirstName;
        //    Label2.Text = ss.LastName;
        //    Label3.Text = ss.Email;
        //    Label4.Text = ss.PhoneNumber;
        //    Label5.Text = ss.FirstName + " " + ss.LastName;
        //    Image1.Src = ss.Photo;


        //}


        protected void Page_Load(object sender, EventArgs e)
        {

            row1.Visible = false;
            row3.Visible= false;
            string id = Context.User.Identity.GetUserId();
            var rec = from rate in db.Comments where rate.UserID == id select new { rate.Comment1 };
            var record = db.AspNetUsers.Find(id);
            FirstName.Text = record.FirstName;
            Phone.Text = Convert.ToString(record.PhoneNumber);
            LastName.Text = record.LastName;
            Email.Text = record.Email;
            Name2.Text = record.FirstName;
            Email1.Text = record.Email;
            image.Src = record.Photo;
            Img1.Src = record.Photo;
            foreach (var item in rec)
            {
                feeds.Text = item.Comment1;
            }



        }
        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        // Remove phonenumber from user
        protected void RemovePhone_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var result = manager.SetPhoneNumber(User.Identity.GetUserId(), null);
            if (!result.Succeeded)
            {
                return;
            }
            var user = manager.FindById(User.Identity.GetUserId());
            if (user != null)
            {
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                Response.Redirect("/Account/Manage?m=RemovePhoneNumberSuccess");
            }
        }

        // DisableTwoFactorAuthentication
        protected void TwoFactorDisable_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            manager.SetTwoFactorEnabled(User.Identity.GetUserId(), false);

            Response.Redirect("/Account/Manage");
        }

        //EnableTwoFactorAuthentication 
        protected void TwoFactorEnable_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            manager.SetTwoFactorEnabled(User.Identity.GetUserId(), true);

            Response.Redirect("/Account/Manage");
        }


        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    string id = Context.User.Identity.GetUserId();

        //    var record = db.AspNetUsers.Find(id);
        //    record.FirstName = TextBox1.Text;
        //    record.LastName = TextBox2.Text;
        //    record.Email = TextBox3.Text;
        //    record.PhoneNumber = TextBox4.Text;
        //    record.UserName = TextBox3.Text;
        //    if (FileUpload1.HasFile)
        //    {
        //        FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("../img/"), FileUpload1.FileName));
        //        record.Photo = "../img/" + FileUpload1.FileName;
        //    }
        //    db.SaveChanges();
        //    Response.Redirect("Manage.aspx");

        //}

        protected void Button2_Click(object sender, EventArgs e)
        {

            string id = Context.User.Identity.GetUserId();
            var record = db.AspNetUsers.Find(id);
            record.FirstName = TextBox1.Text;
            record.LastName = TextBox2.Text;
            record.Email = TextBox3.Text;
            record.PhoneNumber = TextBox4.Text;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("../img/"), FileUpload1.FileName));
                record.Photo = "../img/" + FileUpload1.FileName;
            }
            db.SaveChanges();
            Response.Redirect("Manage.aspx");

        }
        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    div1.Visible = false;
        //    div2.Visible = true;
        //    string id = Context.User.Identity.GetUserId();
        //    var record = db.AspNetUsers.Find(id);
        //    TextBox1.Text = record.FirstName;
        //    TextBox2.Text = record.LastName;
        //    TextBox3.Text = record.Email;
        //    TextBox4.Text = Convert.ToString(record.PhoneNumber);
        //    Image1.Src = record.Photo;
        //}



        protected void Button3_Click(object sender, EventArgs e)
        {
            row2.Visible = false;
            row3.Visible = false;
            row1.Visible = true;
            string id = Context.User.Identity.GetUserId();

            var rec = from rate in db.Comments where rate.UserID == id select new { rate.Comment1 };

            var record = db.AspNetUsers.Find(id);

            TextBox1.Text = record.FirstName;
            TextBox2.Text = record.LastName;
            TextBox3.Text = record.Email;
            TextBox4.Text = Convert.ToString(record.PhoneNumber);


            image.Src = record.Photo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //if (feedback.Value == "")
            //{
            //    return;
            //}
            //else
            //{
            //    feed.IDuser = User.Identity.GetUserId();
            //    feed.IDroom = 1;
            //    feed.comment = feedback.InnerText.ToString();
            //    db.RateRooms.Add(feed);
            //    db.SaveChanges();
            //    ScriptManage

            //string id = Context.User.Identity.GetUserId();
            //var record = db.Comments.Find(id);
            //record.Comment1 = feedback.Value.ToString();
            if (feedback.Value == "")
            {
                return;
            }
            else
            {
                feed.UserID = User.Identity.GetUserId();
                feed.Comment1 = feedback.InnerText.ToString();

                db.Comments.Add(feed);
                db.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);
            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            row1.Visible=false;
            row2.Visible = false;
            row3.Visible = true;
            txt.Visible= false;
            txt2.Visible= false;
        }
    }
}