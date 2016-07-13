using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class whatYouSold : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        string user_log = Session["username"].ToString();
        string user_email = Session["email"].ToString();
        //User user = new User();

        //string query = "select emailAddress from VarvadekarS_WADfl15_Users where Name = '" + user_log + "'";
        //string name = user.EmailAddress;
        //Response.Write(name);
        //SqlCommand command = new SqlCommand(query, conn);
        //try
        //{
        //    conn.Open();
        //    SqlDataReader reader = command.ExecuteReader();
        //    while (reader.Read())
        //    {
        //        name = reader["Name"].ToString();
        //        if (name == user_log)
        //        {
        //            Session["user"] = reader["Name"].ToString();
        //            Session["email"] = reader["emailAddress"].ToString();
        //            Label2.Text = user_log;
        //            string eml = Session["email"].ToString();
        //            Label4.Text = name;
        //        }
        //    }
        //}
        //finally
        //{
        //    conn.Close();
        //}



        if (allUsersList.Count() != 0)
        {
            foreach (User user in allUsersList)
            {
                if (user_log.Equals(user.Name))
                {
                    Session["user"] = user.Name;
                    Session["email"] = user.EmailAddress;
                    Label2.Text = user_log;
                    String email = Session["email"].ToString();
                    Label4.Text = email;

                }
            }
        }
        // Response.Write(user_email);
        StringBuilder table = new StringBuilder();
        if (!Page.IsPostBack)
        {
            conn.Open();

            string query1 = "select b.isbnNumber,b.Title,b.Buy_Price,t.dateSold from VarvadekarS_WADfl15_BookInfor as b, VarvadekarS_WADfl15_Transactions as t where b.isbnNumber = t.isbnNumber and t.emailAddress ='" + user_email + "'";
            // string q1 = "Select * from VarvadekarS_WADfl15_Transactions";
            SqlDataAdapter adapter = new SqlDataAdapter(query1, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            //SqlCommand command1 = new SqlCommand(q1, conn);
            // SqlDataReader reader = command1.ExecuteReader();

            //SqlDataReader reader = command1.ExecuteReader();

            GridView1.DataSource = ds;
            GridView1.DataBind();
            //table.Append("<table style='width: 50%; text-align: center; background-color: skyblue;'>");
            //table.Append("<tr><th>ISBN NUMBER</th><th>TITLE</th><th>DATE SOLD</th><th>SOLD PRICE</th></tr>");

            //if (reader.HasRows)
            //{
            //    while (reader.Read())
            //    {
            //        table.Append("<tr>");
            //        table.Append("<td>" + reader["isbnNumber"] + "</td>");
            //        table.Append("<td>" + reader["Title"] + "</td>");
            //        table.Append("<td>" + reader["dateSold"] + "</td>");
            //        table.Append("<td>" + reader["Buy_Price"] + "</td>");
            //    }
            //}
            //table.Append("</table>");
            //PlaceHolder1.Controls.Add(new Literal{Text = table.ToString()});

            conn.Close();
        }
    }

    protected void main_page_button_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void sell_book_button_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("display.aspx");
    }
}