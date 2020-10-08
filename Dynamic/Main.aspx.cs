using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dynamic
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userInfo = Request.Cookies["info"];
            lblWelcome.Text = "Welcome: " + userInfo["ID"];
            Session["date"] = DateTime.Today.DayOfWeek.ToString() + "," + DateTime.Today.ToShortDateString();

            this.Calendar1.SelectedDate = DateTime.Today;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (this.Calendar1.SelectedDate.DayOfYear < DateTime.Today.DayOfYear)
            {
                this.lblDate.Text = "Select the future date";
            }

            
        }
    }
}