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
    public partial class LiveStock : System.Web.UI.Page
    {
        SqlConnection cnns;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userInfo = Request.Cookies["info"];
            lblLive.Text = "Welcome: " + userInfo["ID"] + " The date is: " + Session["date"];


            try
            {
                

            string connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\waldo\Desktop\Dynamic\Dynamic_Farm.mdf;Integrated Security=True;Connect Timeout=30";
            cnns = new SqlConnection(connection);

            cnns.Open();
            SqlCommand comm;
            string sqlo = "";
            SqlDataAdapter adapt = new SqlDataAdapter();

            sqlo = @"Select * From LiveStock";
            comm = new SqlCommand(sqlo, cnns);
            DataSet ds = new DataSet();

            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            gvLive.DataSource = ds;
            gvLive.DataBind();
            cnns.Close();
            }
            catch (Exception error)
            {
                txtSearchLive.Text = "Unable to connect";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSearchLive_Click(object sender, EventArgs e)
        {
            try
            {
                cnns.Open();
                SqlCommand comm;
                string sqlz = "";
                SqlDataAdapter adap = new SqlDataAdapter();

                sqlz = @"Select * FROM LiveStock WHERE LiveStockType LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR LiveStockAmount  LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR LiveStockLocation LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR TypeOfFeed LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR FeedOnHand_pKg  LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR ArrivingWeight_pKg LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR SellingWeight_pKg LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR BoughtFor LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR SellengFor LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR ArrivingDate LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR SellingDate LIKE '%" + txtSearchLive.Text + "%'" +
                    "OR AmountSold LIKE '%" + txtSearchLive.Text + "%'";



                comm = new SqlCommand(sqlz, cnns);
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds);

                gvLive.DataSource = ds;
                gvLive.DataBind();
                cnns.Close();
            }
            catch (Exception error)
            {
                txtSearchLive.Text = "Unable to connect";
            }

        }

        protected void btnDELLive_Click(object sender, EventArgs e)
        {
            try
            {
                cnns.Open();
                SqlCommand command;
                SqlDataAdapter adap = new SqlDataAdapter();
                string delm = "DELETE FROM LiveStock WHERE LiveStockType LIKE '%" + txtDELLive.Text + "%'";

                command = new SqlCommand(delm, cnns);
                command.ExecuteNonQuery();
                cnns.Close();

                cnns.Open();
                SqlCommand comm;
                string sqlq = "";
                SqlDataAdapter adapt = new SqlDataAdapter();

                sqlq = @"Select * From LiveStock";
                comm = new SqlCommand(sqlq, cnns);
                DataSet ds = new DataSet();

                adapt.SelectCommand = comm;
                adapt.Fill(ds);

                gvLive.DataSource = ds;
                gvLive.DataBind();
                cnns.Close();
            }
            catch (Exception error)
            {
                txtDELLive.Text = "Invalid, unable to complete action";
            }

        }

        protected void btnSortFeed_Click(object sender, EventArgs e)
        {
            cnns.Open();
            SqlCommand comm;
            string sqlx = "";
            SqlDataAdapter adapt = new SqlDataAdapter();

            sqlx = @"Select * From LiveStock WHERE FeedOnHand_pKg < 2300";
            comm = new SqlCommand(sqlx, cnns);
            DataSet ds = new DataSet();

            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            gvLive.DataSource = ds;
            gvLive.DataBind();
            cnns.Close();
        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            cnns.Open();
            SqlCommand comm;
            string sqlx = "";
            SqlDataAdapter adapt = new SqlDataAdapter();

            sqlx = @"Select * From LiveStock WHERE BoughtFor < 1000";
            comm = new SqlCommand(sqlx, cnns);
            DataSet ds = new DataSet();

            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            gvLive.DataSource = ds;
            gvLive.DataBind();
            cnns.Close();
        }
    }
}