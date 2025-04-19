using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SQLite;

namespace main.web
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserData();
            }
        }

        private void LoadUserData()
        {
            // استفاده از کانکشن استرینگ از Web.config
            string connectionString = "Data Source=" + Server.MapPath("~/App_Data/Users.db") + ";Version=3;";

            using (SQLiteConnection connection = new SQLiteConnection(connectionString))
            {
                connection.Open();

                // کوئری برای گرفتن داده‌ها از جدول Users
                string query = "SELECT id, Username, password FROM Users";

                using (SQLiteCommand command = new SQLiteCommand(query, connection))
                {
                    using (SQLiteDataAdapter adapter = new SQLiteDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // بارگذاری داده‌ها در GridView
                        UserGridView.DataSource = dataTable;
                        UserGridView.DataBind();
                    }
                }
            }
        }

    }
}
