using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Collections;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUserList"] as List<User>;
        if (Session["currentUser"] == null)
        {
            Panel1.Visible = true;
            Panel3.Visible = false;
            string sql = "select * from VarvadekarS_WADfl15_Users";

            SqlCommand command = new SqlCommand(sql, conn);

            try
            {
                conn.Open();

                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Session["password"] = reader["Password"].ToString();
                }
            }
            finally
            {
                conn.Close();
            }
        }
        else
       {
           Panel2.Visible = true;
           Panel3.Visible = true;
           text.Text = Session["currentUser"].ToString();
           String logon = text.Text + " Logged in";
           Session["username"] = text.Text;


           string sql = "select * from VarvadekarS_WADfl15_Users where Name ='" + Session["currentUser"].ToString() + "'";

           SqlCommand command = new SqlCommand(sql, conn);

           try
           {
               conn.Open();

               SqlDataReader reader = command.ExecuteReader();
               while (reader.Read())
               {
                   Session["email"] = reader["emailAddress"].ToString();
               }
           }
           finally
           {
               conn.Close();
           }
       }
    }


    public void get_quote_OnClick(Object sender, EventArgs e)
    {

        Regex regular_expression = new Regex(@"^978[-][0-9]{10}$");
        String txt = isbn.Text;
        if (txt.Equals(""))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message1();", true);
        }
        else if (!regular_expression.IsMatch(txt))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message2();", true);

        }
        else
        {
            List<Books> books = Application["Books"] as List<Books>;

            string query = "select isbnNumber from VarvadekarS_WADfl15_BookInfor";
            string text = isbn.Text;
            string isbnnumber;
            SqlCommand command = new SqlCommand(query, conn);

            try
            {
                conn.Open();

                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    isbnnumber = reader["isbnNumber"].ToString();
                    if (isbnnumber == text)
                    {
                        Session["Isbn"] = isbn.Text;
                        Session["user"] = isbn.Text;
                        //  Session["email"] = reader["emailAddress"].ToString();
                        Response.Redirect("display.aspx", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage3();", true);
                    }
                }
            }
            finally
            {
                conn.Close();
            }

            //foreach (Books book in books)
            //{
            //    if (txt.Equals(book.Isbn)) 
            //    {
            //        Session["Isbn"] = Text1.Text;
            //        Response.Redirect("display.aspx", true);
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage3();", true);

            //    }
            //}
        }
    }
}
