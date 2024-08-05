using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace BBS635_Demo1
{
    public partial class karakterlistesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsUserLoggedIn())
            {
                Response.Redirect("Login.aspx"); // Redirect to a login page if not authenticated
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = this.TextBox1.Text, userpass = this.TextBox2.Text;
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\Users\burak\OneDrive\Masaüstü\BBS635-Demo1\urun.mdb'";
            OleDbConnection con = new OleDbConnection(connectionString);
            con.Open();
            OleDbCommand cmd = new OleDbCommand("SELECT USERNAME, USERPASS FROM USERS WHERE USERNAME = @username AND USERPASS = @userpass", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@userpass", userpass);
            Object x = cmd.ExecuteScalar();
            con.Close();

            if (x != null)
            {
                HttpCookie myCookie = new HttpCookie("mywebsite");
                myCookie.Value = username; // Store the username or some unique identifier
                myCookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(myCookie);
                this.Label1.Text = "Giriş Başarılı.";
                // Show character list
                LoadCharacterList();
            }
            else
            {
                this.Label1.Text = "Giriş Başarısız";
            }
        }

        private bool IsUserLoggedIn()
        {
            HttpCookie myCookie = Request.Cookies["mywebsite"];
            return myCookie != null;
        }

        private void LoadCharacterList()
        {
            // Load the character list logic
            this.CharacterListPanel.Visible = true; // Assuming CharacterListPanel contains the character list UI
        }

        public string GetProductImagePath(string imagename)
        {
            return string.Format("image/{0}", imagename);
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            // Your logic here
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Your logic here
        }
    }
}
