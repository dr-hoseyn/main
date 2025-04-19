using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main.web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string use = username.Text;
            string pas = password.Text;

            string connectionString = "Data Source=|DataDirectory|Users.db;Version=3;";
            using (SQLiteConnection connection = new SQLiteConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(1) FROM Users WHERE Username = @username AND Password = @password";
                using (SQLiteCommand command = new SQLiteCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", use); 
                    command.Parameters.AddWithValue("@password", pas);  
                    int count = Convert.ToInt32(command.ExecuteScalar());
                    if (count == 1)
                    {
                        Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
                        lbl_res.Text = "Login failed!";
                    }
                }
            }
        }
    }
}
