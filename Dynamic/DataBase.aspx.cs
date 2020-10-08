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
    public partial class DataBase : System.Web.UI.Page
    {
        SqlConnection cns;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userInfo = Request.Cookies["info"];
            lblData.Text = "Welcome: " + userInfo["ID"] + " The date is: " + Session["date"];


            Panel1.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;

            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\waldo\Desktop\Dynamic\Dynamic_Farm.mdf;Integrated Security=True;Connect Timeout=30";
            cns = new SqlConnection(connString);


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Panel1.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 1)
            {
                Panel3.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 2)
            {
                Panel4.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 3)
            {
                Panel5.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 4)
            {
                Panel6.Visible = true;
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int ID;
            string userName, password;

            try
            {
                ID = Convert.ToInt32(TextBox49.Text);
                userName = TextBox50.Text;
                password = TextBox51.Text;

                cns.Open();

                string sqlw = @"INSERT INTO Login VALUES('" + ID + "','" + userName + "','" + password + "')";

                SqlCommand command = new SqlCommand(sqlw, cns);

                command.ExecuteNonQuery();
                lblDisplay.Text = "Data Succesfully Added!!";

                cns.Close();

            }
            catch(Exception error)
            {
                TextBox49.Text = "Error";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string Name, jobDesc, asset, avail, hoursWorked, hourRate, wage;

            try
            {
                Name = TextBox42.Text;
                jobDesc = TextBox43.Text;
                asset = TextBox44.Text;
                avail = TextBox45.Text;
                hoursWorked = TextBox46.Text;
                hourRate = TextBox47.Text;
                wage = TextBox48.Text;

                cns.Open();

                string sqlw = @"INSERT INTO Workers VALUES('" + Name + "','" + jobDesc + "','" + asset +"','" + avail +"','" + hoursWorked +"','" + hourRate +"','" + wage + "')";

                SqlCommand command = new SqlCommand(sqlw, cns);

                command.ExecuteNonQuery();
                lblDisplay.Text = "Data Succesfully Added!!";

                cns.Close();

            }
            catch (Exception error)
            {
                TextBox49.Text = "Error";
            }
        }

        protected void btnGrain_Click(object sender, EventArgs e)
        {
            string type, grainOnHand, costPrice, sellingPrice, location, fertilizer, fertOnHand, fertCost, farmPlanted;

            try
            {
                type = TextBox56.Text;
                grainOnHand = TextBox57.Text;
                costPrice = TextBox58.Text;
                sellingPrice = TextBox59.Text;
                location = TextBox60.Text;
                fertilizer = TextBox61.Text;
                fertOnHand = TextBox62.Text;
                fertCost = TextBox63.Text;
                farmPlanted = TextBox64.Text;

                cns.Open();

                string sqlss = @"INSERT INTO Grain VALUES('" + type + "','" + grainOnHand + "','" + costPrice + "','" + sellingPrice + "','" + location + "','" + fertilizer + "','" + fertOnHand + "','" + fertCost + "','" + farmPlanted + "')";

                SqlCommand command = new SqlCommand(sqlss, cns);

                command.ExecuteNonQuery();
                lblDisplay.Text = "Data Succesfully Added!!";

                cns.Close();

            }
            catch (Exception error)
            {
                TextBox49.Text = "Error";
            }
        }

        protected void btnLive_Click(object sender, EventArgs e)
        {
            string type, amount, location, feedType, feedOnHand, arrivingWeight, sellingWeight, costPrice, sellingPrice, arriveDate, sellDate, amountSold;

            try
            {
                type = TextBox9.Text;
                amount = TextBox10.Text;
                location = TextBox11.Text;
                feedType = TextBox12.Text;
                feedOnHand = TextBox13.Text;
                arrivingWeight = TextBox14.Text;
                sellingWeight = TextBox29.Text;
                costPrice = TextBox30.Text;
                sellingPrice = TextBox31.Text;
                arriveDate = TextBox32.Text;
                sellDate = TextBox33.Text;
                amountSold = TextBox34.Text;

                cns.Open();

                string sqlw = @"INSERT INTO LiveStock VALUES('" + type + "','" + amount + "','" + location + "','" + feedType + "','" + feedOnHand + "','" + arrivingWeight + "','" + sellingWeight + "','" + costPrice + "','" + sellingPrice + "','" + arriveDate + "','" + sellDate + "','" + amountSold + "')";

                SqlCommand command = new SqlCommand(sqlw, cns);

                command.ExecuteNonQuery();
                lblDisplay.Text = "Data Succesfully Added!!";

                cns.Close();

            }
            catch (Exception error)
            {
                TextBox49.Text = "Error";
            }

        }

        protected void btnImp_Click(object sender, EventArgs e)
        {
            string Imp, desr, costPrice, sellingPrice, purchDate, condition, repair;

            try
            {
                Imp = TextBox1.Text;
                desr = TextBox2.Text;
                costPrice = TextBox3.Text;
                sellingPrice = TextBox4.Text;
                purchDate = TextBox5.Text;
                condition = TextBox6.Text;
                repair = TextBox7.Text;

                cns.Open();

                string sqlw = @"INSERT INTO Implements VALUES('" + Imp + "','" + desr + "','" + costPrice + "','" + sellingPrice + "','" + purchDate + "','" + condition + "','" + repair + "')";

                SqlCommand command = new SqlCommand(sqlw, cns);

                command.ExecuteNonQuery();
                lblDisplay.Text = "Data Succesfully Added!!";

                cns.Close();

            }
            catch (Exception error)
            {
                TextBox49.Text = "Error";
            }

        }

        protected void TextBox32_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox61_TextChanged(object sender, EventArgs e)
        {

        }
    }
}