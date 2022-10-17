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
    public partial class Register : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KefiloeMoshoaliba\Documents\C# proj\C# 2ND YR\34316345_Assessment_2\34316345_Assessment_2\App_Data\ClientData.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Session["Username"] = txtUsername.Text;
            // Session["Password"] = txtPassword.Text;

            /*HttpCookie theCookie = new HttpCookie("User Details");
            theCookie["userName"] = txtUsername.Text;
            theCookie["Password"] = txtPassword.Text;

            theCookie.Expires = DateTime.Now.AddDays(2);*/

            try
            {
                conn = new SqlConnection(str);
                conn.Open();

                command = new SqlCommand($"INSERT INTO Clients(Username,Password) Values('{txtUsername.Text}','{txtPassword.Text}')", conn);
                adapter = new SqlDataAdapter();

                adapter.InsertCommand = command;
                adapter.InsertCommand.ExecuteNonQuery();

                conn.Close();
            }
            catch (SqlException error)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Error: an error occurred while inserting into database');", true);
            }

            Response.Redirect("Login.aspx");
        }
    }
}