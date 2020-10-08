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
    public partial class Workers : System.Web.UI.Page
    {
        SqlConnection cnn;
        DataSet ds;
        SqlDataAdapter adapter;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userInfo = Request.Cookies["info"];
            lblWork.Text = "Welcome: " + userInfo["ID"] + " The date is: " + Session["date"];

            try
            { 

            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\waldo\Desktop\Dynamic\Dynamic_Farm.mdf;Integrated Security=True;Connect Timeout=30";
            cnn = new SqlConnection(connString);

            cnn.Open();
            SqlCommand comm;
            string sql = "";
            SqlDataAdapter adap = new SqlDataAdapter();

            sql = @"Select WorkerName, JobDescription, AessetsAssigned, Availability From Workers";
            comm = new SqlCommand(sql, cnn);
            DataSet ds = new DataSet();

            adap.SelectCommand = comm;
            adap.Fill(ds);

            gvWorkers.DataSource = ds;
            gvWorkers.DataBind();

            cnn.Close();
            }
            catch (Exception error)
            {
                txtSearchWork.Text = "Unable to connect";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSortAlpha_Click(object sender, EventArgs e)
        {
            try
            {
                
            cnn.Open();
            SqlCommand comm;
            string sql = "";
            SqlDataAdapter adap = new SqlDataAdapter();

            sql = @"Select WorkerName, JobDescription, AessetsAssigned, Availability From Workers ORDER BY WorkerName DESC";
            comm = new SqlCommand(sql, cnn);
            DataSet ds = new DataSet();

            adap.SelectCommand = comm;
            adap.Fill(ds);

            gvWorkers.DataSource = ds;
            gvWorkers.DataBind();

            cnn.Close();
            }
            catch (Exception error)
            {
                txtSearchWork.Text = "Unable to connect";
            }

        }

        protected void btnSortAvail_Click(object sender, EventArgs e)
        {
            try
            {
                
            cnn.Open();
            SqlCommand comm;
            string sql = "";
            SqlDataAdapter adap = new SqlDataAdapter();

            sql = @"Select WorkerName, JobDescription, AessetsAssigned, Availability From Workers WHERE Availability = 'N'";
            comm = new SqlCommand(sql, cnn);
            DataSet ds = new DataSet();

            adap.SelectCommand = comm;
            adap.Fill(ds);

            gvWorkers.DataSource = ds;
            gvWorkers.DataBind();

            cnn.Close();
            }
            catch (Exception error)
            {
                txtSearchWork.Text = "Unable to connect";
            }
        }

        protected void btnSearchW_Click(object sender, EventArgs e)
        {
            try
            {

                cnn.Open();
                SqlCommand comm;
                string sqlt = "";
                SqlDataAdapter adap = new SqlDataAdapter();

                sqlt = @"Select WorkerName, JobDescription, AessetsAssigned, Availability FROM Workers WHERE WorkerName LIKE '%" + txtSearchWork.Text + "%'" + "OR JobDescription  LIKE '%" + txtSearchWork.Text + "%'" + "OR AessetsAssigned LIKE '%" + txtSearchWork.Text + "%'" + "OR Availability LIKE '%" + txtSearchWork.Text + "%'";
                comm = new SqlCommand(sqlt, cnn);
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds);

                gvWorkers.DataSource = ds;
                gvWorkers.DataBind();
                cnn.Close();
            }
            catch (Exception error)
            {
                txtSearchWork.Text = "Unable to connect";
            }
        }

        protected void btnDelWork_Click(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                SqlCommand command;
                SqlDataAdapter adap = new SqlDataAdapter();
                string del = "DELETE FROM Workers WHERE WorkerName LIKE '%" + txtDELWork.Text + "%'";

                command = new SqlCommand(del, cnn);
                command.ExecuteNonQuery();
                cnn.Close();

                cnn.Open();
                SqlCommand comm;
                string sqls = "";
                SqlDataAdapter adapt = new SqlDataAdapter();

                sqls = @"Select WorkerName, JobDescription, AessetsAssigned, Availability From Workers";
                comm = new SqlCommand(sqls, cnn);
                DataSet ds = new DataSet();

                adapt.SelectCommand = comm;
                adapt.Fill(ds);

                gvWorkers.DataSource = ds;
                gvWorkers.DataBind();
                cnn.Close();
            }
            catch (Exception error)
            {
                txtDELWork.Text = "";
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
    }
}