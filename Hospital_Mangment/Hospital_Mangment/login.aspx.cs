using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Hospital_Mangment
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            string pass = TextBox2.Text;

            string connetionString;
            SqlConnection cnn;

            connetionString = @"Data Source=DESKTOP-Q6ADB39\SQLEXPRESS;Initial Catalog=MyDatabase;User ID=sa;Password=Password@123";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            string sql = "select password from dbo.MyUser where userid=@id";
            SqlCommand com = new SqlCommand(sql, cnn);

            com.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = com.ExecuteReader();
            string passcheck = "";
            if (reader.Read())
            {
                passcheck = reader.GetValue(0).ToString();
            }

            cnn.Close();

            if (passcheck.Equals(""))
            {
                Label1.Text = "Incorrect Id";
            }
            else if (passcheck.Equals(pass))
            {
                Session["state"] = "West Bengal";
                Session["location"] = "Jadavpur";
                Response.Redirect("Home.aspx?user=" + id);
            }

        }
    }
}