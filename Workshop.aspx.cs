using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace _34316345_Assessment_2
{
    public partial class Workshop : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KefiloeMoshoaliba\Documents\C# proj\C# 2ND YR\34316345_Assessment_2\34316345_Assessment_2\App_Data\ClientData.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDates.Clear();

            try
            {
                if(Request.Cookies["UserInfo"] != null)
                {
                    HttpCookie cookie = Request.Cookies["UserInfo"];
                    Session["Username"] = cookie["Username"];
                    Session["Password"] = cookie["Password"];
                }

                conn = new SqlConnection(str);
                conn.Open();
                DataSet ds = new DataSet();

                if (Session["Username"] != null)
                {
                    lblUser.Text = Session["Username"].ToString();

                    command = new SqlCommand($"SELECT Username,WorkshopDate,Java,CSharp,CPP FROM Clients Where Username ='{Session["Username"].ToString()}' AND Password ='{Session["Password"].ToString()}'", conn);
                    adapter = new SqlDataAdapter();

                    adapter.SelectCommand = command;
                    adapter.Fill(ds);

                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }

                conn.Close();
            }
            catch(SqlException error)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Error: an error occurred while working with the database');", true);
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //HttpCookie theCookieRequest = Request.Cookies["User Details"];

            try
            {
                conn = new SqlConnection(str);
                conn.Open();
                
                string date = Calendar1.SelectedDate.ToShortDateString();
                
                if (Session["Username"] != null)
                {
                    if (radBtnJava.Checked)
                    {
                        command = new SqlCommand($"UPDATE Clients SET WorkshopDate ='{date}',Java ='1',CSharp ='0',CPP ='0' WHERE Username ='{Session["Username"].ToString()}' AND Password = '{Session["Password"].ToString()}'", conn);
                    }
                    else if (radBtnCSharp.Checked)
                    {
                        command = new SqlCommand($"UPDATE Clients SET WorkshopDate ='{date}',Java ='0',CSharp ='1',CPP ='0' WHERE Username ='{Session["Username"].ToString()}' AND Password = '{Session["Password"].ToString()}'", conn);
                    }
                    else
                    {
                        command = new SqlCommand($"UPDATE Clients SET WorkshopDate ='{date}',Java ='0',CSharp ='0',CPP ='1' WHERE Username ='{Session["Username"].ToString()}' AND Password = '{Session["Password"].ToString()}'", conn);
                    }
                }
                adapter = new SqlDataAdapter();

                adapter.UpdateCommand = command;
                adapter.UpdateCommand.ExecuteNonQuery();

                conn.Close();
            }
            catch(SqlException error)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Error: an error occurred while working with the database');", true);
            }
        }

        protected void radBtnJava_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if(Request.Cookies["UserInfo"] != null)
            {
                Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("Login.aspx");
        }
    }
}