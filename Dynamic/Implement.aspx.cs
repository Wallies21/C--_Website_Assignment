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
    public partial class Implement : System.Web.UI.Page
    {
        SqlConnection cnnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userInfo = Request.Cookies["info"];
            lblImp.Text = "Welcome: " + userInfo["ID"];
            lblDate.Text = "The date is: " + Session["date"];

            try
            {

                string connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\waldo\Desktop\Dynamic\Dynamic_Farm.mdf;Integrated Security=True;Connect Timeout=30";
                cnnn = new SqlConnection(connection);

                cnnn.Open();
                SqlCommand comm;
                string sqlh = "";
                SqlDataAdapter adap = new SqlDataAdapter();

                sqlh = @"Select * From Implements";
                comm = new SqlCommand(sqlh, cnnn);
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds);

                gvImp.DataSource = ds;
                gvImp.DataBind();

                cnnn.Close();
            }
            catch(Exception error)
            {
                txtSearchImp.Text = "Unable to connect";
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        }

        protected void btnSearchImp_Click(object sender, EventArgs e)
        {
            try
            {

                cnnn.Open();
                SqlCommand comm;
                string sqlk = "";
                SqlDataAdapter adap = new SqlDataAdapter();

                sqlk = @"Select * FROM Implements WHERE Implement LIKE '%" + txtSearchImp.Text + "%'" +
                    "OR Description  LIKE '%" + txtSearchImp.Text + "%'" +
                    "OR CostToPurchase LIKE '%" + txtSearchImp.Text + "%'" +
                    "OR SellengPrice LIKE '%" + txtSearchImp.Text + "%'" +
                    "OR DateOfPurchase  LIKE '%" + txtSearchImp.Text + "%'" +
                    "OR Condition LIKE '%" + txtSearchImp.Text + "%'" +
                    "OR Repair LIKE '%" + txtSearchImp.Text + "%'";



                comm = new SqlCommand(sqlk, cnnn);
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds);

                gvImp.DataSource = ds;
                gvImp.DataBind();

                cnnn.Close();
            }
            
            catch(Exception error)
            {
                txtSearchImp.Text = "Unable to connect";
            }

}

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                cnnn.Open();
                SqlCommand command;
                SqlDataAdapter adap = new SqlDataAdapter();
                string dela = "DELETE FROM Implements WHERE Implement LIKE '%" + txtDELimp.Text + "%'";

                command = new SqlCommand(dela, cnnn);
                command.ExecuteNonQuery();
                cnnn.Close();

                cnnn.Open();
                SqlCommand comm;
                string sqll = "";
                SqlDataAdapter adapt = new SqlDataAdapter();

                sqll = @"Select * From Implements";
                comm = new SqlCommand(sqll, cnnn);
                DataSet ds = new DataSet();

                adapt.SelectCommand = comm;
                adapt.Fill(ds);

                gvImp.DataSource = ds;
                gvImp.DataBind();
                cnnn.Close();
            }
            catch (Exception error)
            {
                txtDELimp.Text = "Invalid, unable to complete action";
            }

        }

        protected void btnRepair_Click(object sender, EventArgs e)
        {
            try
            {

                cnnn.Open();
                SqlCommand comm;
                string sql = "";
                SqlDataAdapter adap = new SqlDataAdapter();

                sql = @"Select * From Implements WHERE Repair = 'Y'";
                comm = new SqlCommand(sql, cnnn);
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds);

                gvImp.DataSource = ds;
                gvImp.DataBind();

                cnnn.Close();
            }
            catch (Exception error)
            {
                txtSearchImp.Text = "Unable to connect";
            }
        }

        protected void btnCon_Click(object sender, EventArgs e)
        {
            try
            {

                cnnn.Open();
                SqlCommand comm;
                string sql = "";
                SqlDataAdapter adap = new SqlDataAdapter();

                sql = @"Select * From Implements WHERE Condition = 'Good'";
                comm = new SqlCommand(sql, cnnn);
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds);

                gvImp.DataSource = ds;
                gvImp.DataBind();

                cnnn.Close();
            }
            catch (Exception error)
            {
                txtSearchImp.Text = "Unable to connect";
            }
        }
    }
}