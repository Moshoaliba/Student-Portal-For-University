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
    public partial class Login : System.Web.UI.Page
    {
        
        public SqlConnection conn;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KefiloeMoshoaliba\Documents\C# proj\C# 2ND YR\34316345_Assessment_2\34316345_Assessment_2\App_Data\ClientData.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["UserInfo"] != null)
            {
                Response.Redirect("Workshop.aspx");
            }
            
        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(str);
            conn.Open();

            command = new SqlCommand("SELECT COUNT(*) FROM Clients WHERE Username = @Uname AND Password = @Password", conn);
            
            command.Parameters.AddWithValue("@Uname", txtUserCheck.Text);
            command.Parameters.AddWithValue("@Password", txtPasswordCheck.Text);

            int DetailExist = (int)command.ExecuteScalar();

            if(DetailExist < 1)
            {
                lblNotMatch.Text = "Invalid details, please register";
            }
            else
            {
                Session["Username"] = txtUserCheck.Text;
                Session["Password"] = txtPasswordCheck.Text;

                if (RememberCheckB.Checked)
                {
                    HttpCookie cookie = new HttpCookie("UserInfo");
                    cookie["Username"] = txtUserCheck.Text;
                    cookie["Password"] = txtPasswordCheck.Text;
                    Response.Cookies.Add(cookie);
                    cookie.Expires = DateTime.Now.AddDays(2);
                }

                Response.Redirect("Workshop.aspx");
            }

            conn.Close();
        }

        protected void RememberCheckB_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}