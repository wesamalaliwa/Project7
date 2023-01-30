using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void calc_Click(object sender, EventArgs e)
        {
            if (weight.Value == "" || height.Value == "") { return; }

            res.Visible = true;
            double w = Convert.ToDouble(weight.Value);
            double h = Convert.ToDouble(height.Value);

            double result = ((w / h) / h) * 10000;
            result = Math.Round(result);
            res.InnerHtml = "YOUR BMI: " + result.ToString();
            weight.Value = "";
            height.Value = "";
            age.Value = "";
        }
    }
}