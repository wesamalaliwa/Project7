﻿using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using project7.Models;

namespace project7.Account
{
    public partial class Register : Page
    {
        gymdbEntities2 db = new gymdbEntities2();
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, PhoneNumber = PhoneNumber.Text, };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)   
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                AspNetUser userr = db.AspNetUsers.Find(user.Id);
                userr.FirstName=FirstName.Text; userr.LastName=LastName.Text;
                //userr.FirstNmae = FirstName.Text;
                //userr.LastNmae = LastName.Text;
                db.SaveChanges();
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }

        protected void PhoneNumber_TextChanged(object sender, EventArgs e)
        {

        }
    }
}