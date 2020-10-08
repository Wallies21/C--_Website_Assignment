using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Dynamic
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cnn;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\waldo\Desktop\Dynamic\Dynamic_Farm.mdf;Integrated Security=True;Connect Timeout=30";
            cnn = new SqlConnection(conString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnn.Open();
            string sql = "Select Count(1) From Login Where username=@username AND password=@password";

            SqlCommand command = new SqlCommand(sql, cnn);
            command.Parameters.AddWithValue("@username", txtID.Text.Trim());
            command.Parameters.AddWithValue("@password", txtPW.Text.Trim());
            int count = Convert.ToInt32(command.ExecuteScalar());
            if(count == 1)
            {
                HttpCookie userInfo = new HttpCookie("info");
                userInfo["ID"] = txtID.Text;
                userInfo.Expires = DateTime.Now.AddHours(2);
                Response.Cookies.Add(userInfo);

                Response.Redirect("Main.aspx");
            }
            
            cnn.Close();
        }
    }
}