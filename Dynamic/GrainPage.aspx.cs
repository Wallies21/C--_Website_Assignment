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
    public partial class GrainPage : System.Web.UI.Page
    {
        SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userInfo = Request.Cookies["info"];
            lblGrain.Text = "Welcome: " + userInfo["ID"] + " The date is: " + Session["date"];

            try
            { 

                string connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\waldo\Desktop\Dynamic\Dynamic_Farm.mdf;Integrated Security=True;Connect Timeout=30";
                cnn = new SqlConnection(connection);

                cnn.Open();
                SqlCommand comm;
                string sqlx = "";
                SqlDataAdapter adapt = new SqlDataAdapter();

                sqlx = @"Select * From Grain";
                comm = new SqlCommand(sqlx, cnn);
                DataSet ds = new DataSet();

                adapt.SelectCommand = comm;
                adapt.Fill(ds);

                gvGrains.DataSource = ds;
                gvGrains.DataBind();
                cnn.Close();
                }
            catch (Exception error)
            {
                txtsearchGrain.Text = "Unable to connect";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }


        protected void btnSearchGrain_Click(object sender, EventArgs e)
        {
            try
            {
                
            cnn.Open();
            SqlCommand comm;
            string sqlk = "";
            SqlDataAdapter adap = new SqlDataAdapter();

            sqlk = @"Select * FROM Grain WHERE GrainType LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR GrainOnHand_pKg  LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR CostPrice_pTon LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR SellingPrice_pTon LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR GrainLocation  LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR TypeFertilizer LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR FertilizerOnHand_pKg LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR CostFertilizer_pKg LIKE '%" + txtsearchGrain.Text + "%'" +
                "OR FarmPlanted LIKE '%" + txtsearchGrain.Text + "%'";



            comm = new SqlCommand(sqlk, cnn);
            DataSet ds = new DataSet();

            adap.SelectCommand = comm;
            adap.Fill(ds);

            gvGrains.DataSource = ds;
            gvGrains.DataBind();
            cnn.Close();
            }
            catch (Exception error)
            {
                txtsearchGrain.Text = "Unable to connect";
            }
        }

        protected void btnDELGrain_Click(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                SqlCommand command;
                SqlDataAdapter adap = new SqlDataAdapter();
                string delg = "DELETE FROM Grain WHERE GrainType LIKE '%" + txtDELGrain.Text + "%'";

                command = new SqlCommand(delg, cnn);
                command.ExecuteNonQuery();
                cnn.Close();

                cnn.Open();
                SqlCommand comm;
                string sqll = "";
                SqlDataAdapter adapt = new SqlDataAdapter();

                sqll = @"Select * From Grain";
                comm = new SqlCommand(sqll, cnn);
                DataSet ds = new DataSet();

                adapt.SelectCommand = comm;
                adapt.Fill(ds);

                gvGrains.DataSource = ds;
                gvGrains.DataBind();
                cnn.Close();
            }
            catch (Exception error)
            {
                txtDELGrain.Text = "Invalid, unable to complete action";
            }
        }

        protected void btnSortOnHand_Click(object sender, EventArgs e)
        {
            cnn.Open();
            SqlCommand comm;
            string sqlx = "";
            SqlDataAdapter adapt = new SqlDataAdapter();

            sqlx = @"Select * From Grain WHERE GrainOnHand_pKg < 400";
            comm = new SqlCommand(sqlx, cnn);
            DataSet ds = new DataSet();

            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            gvGrains.DataSource = ds;
            gvGrains.DataBind();
            cnn.Close();
        }

        protected void btnFertAvail_Click(object sender, EventArgs e)
        {
            cnn.Open();
            SqlCommand comm;
            string sqlx = "";
            SqlDataAdapter adapt = new SqlDataAdapter();

            sqlx = @"Select * From Grain WHERE FertilizerOnHand_pKg < 900";
            comm = new SqlCommand(sqlx, cnn);
            DataSet ds = new DataSet();

            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            gvGrains.DataSource = ds;
            gvGrains.DataBind();
            cnn.Close();
        }
    }
}