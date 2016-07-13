using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class display : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["Isbn"] != null)
        {
            string number = Session["Isbn"] as string;

            bookInformation(number);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUserList"] as List<User>;
        if (Session["currentUser"] == null)
        {
            sell_book_button.Enabled = false;
        }
        else
        {
            sell_book_button.Enabled = true;
        }
    }

    public void bookInformation(String number)
    {
        int counter = 0;
        List<Books> books = Application["Books"] as List<Books>;
        string isbnNum = Session["Isbn"].ToString();
        string isbn;
        string query = "select isbnNumber,Title,Author,Buy_Price from VarvadekarS_WADfl15_BookInfor";

        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                isbn = reader["isbnNumber"].ToString();
                if (isbn == isbnNum)
                {
                    TextBox1.Text = reader["isbnNumber"].ToString();
                    title_box.Text = reader["Title"].ToString();
                    author_box.Text = reader["Author"].ToString();
                    price_box.Text = reader["Buy_Price"].ToString();


                    Image2.ImageUrl = "~/Images/" + reader["isbnNumber"].ToString() + ".png";
                    counter = 1;
                }
            }
        }
        finally
        {
            conn.Close();
        }
        //foreach (Books book in books)
        //{

        //    if (book.Isbn.Trim() == number.Trim())
        //    {
        //        TextBox1.Text = Session["Isbn"].ToString();
        //        title_box.Text = book.Title;
        //        author_box.Text = book.Author;
        //        price_box.Text = book.Buyprice;


        //        Image2.ImageUrl = "~/Images/" + book.Isbn.Trim() + ".png";
        //        counter = 1;
        //    }
        //}

        if (counter != 1)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message();", true);
        }
    }

    //public void check_isbn_Click(Object sender, EventArgs e)
    //{
        //Regex regular_expression = new Regex(@"^978[-][0-9]{10}$");
        //String isbn = TextBox1.Text;
        //if (!regular_expression.IsMatch(isbn))
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message3();", true);

        //}
        //else
        //{
        //    int counter = 0;
        //    string number = TextBox1.Text;
        //    List<Books> books = Application["Books"] as List<Books>;
        //    string isbnnumber;
        //    string query = "select isbnNumber,Title,Author,Buy_Price from VarvadekarS_WADfl15_BookInfor";

        //    SqlCommand command = new SqlCommand(query, conn);

        //    try
        //    {
        //        conn.Open();

        //        SqlDataReader reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            isbnnumber = reader["isbnNumber"].ToString();
        //            if (isbnnumber == number)
        //            {
        //                TextBox1.Text = reader["isbnNumber"].ToString();
        //                title_box.Text = reader["Title"].ToString();
        //                author_box.Text = reader["Author"].ToString();
        //                price_box.Text = reader["Buy_Price"].ToString();


        //                Image2.ImageUrl = "~/Images/" + reader["isbnNumber"].ToString() + ".png";
        //                counter = 1;
        //            }
        //        }
        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }
        //    //foreach (Books book in books)
        //    //{

        //    //    if (book.Isbn.Trim() == number.Trim())
        //    //    {
        //    //        counter = 1;
        //    //    }
        //    //}

        //    if (counter == 1)
        //    {
        //        Session["Isbn"] = TextBox1.Text;
        //        Response.Redirect("display.aspx");
        //    }
        //    else
        //    {
        //        TextBox1.Text = Session["Isbn"].ToString();
        //        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message();", true);

        //    }
        //}
  //  }

    public void sell_book_button_OnClick(Object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string isbn = TextBox1.Text;
        DateTime dt = new DateTime();
        string s = DateTime.Now.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);

        string query = "insert into VarvadekarS_WADfl15_Transactions (emailAddress,isbnNumber,dateSold) values ((select emailAddress from VarvadekarS_WADfl15_Users where Name='" + username + "'),'" + isbn + "','" + s + "')";

        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();

            command.ExecuteNonQuery();
        }
        finally
        {
            conn.Close();
        }
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage1", "Message1();", true);
    }

    public void no_thanks_button_OnClick(Object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", true);
    }

    protected void check_isbn_Click1(object sender, EventArgs e)
    {
        Regex regular_expression = new Regex(@"^978[-][0-9]{10}$");
        String isbn = TextBox1.Text;
        if (!regular_expression.IsMatch(isbn))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message3();", true);

        }
        else
        {
            int counter = 0;
            string number = TextBox1.Text;
            List<Books> books = Application["Books"] as List<Books>;
            string isbnnumber;
            string query = "select isbnNumber,Title,Author,Buy_Price from VarvadekarS_WADfl15_BookInfor";

            SqlCommand command = new SqlCommand(query, conn);

            try
            {
                conn.Open();

                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    isbnnumber = reader["isbnNumber"].ToString();
                    if (isbnnumber == number)
                    {
                        TextBox1.Text = reader["isbnNumber"].ToString();
                        title_box.Text = reader["Title"].ToString();
                        author_box.Text = reader["Author"].ToString();
                        price_box.Text = reader["Buy_Price"].ToString();


                        Image2.ImageUrl = "~/Images/" + reader["isbnNumber"].ToString() + ".png";
                        counter = 1;
                    }
                }
            }
            finally
            {
                conn.Close();
            }
            //foreach (Books book in books)
            //{

            //    if (book.Isbn.Trim() == number.Trim())
            //    {
            //        counter = 1;
            //    }
            //}

            if (counter == 1)
            {
                Session["Isbn"] = TextBox1.Text;
                Response.Redirect("display.aspx");
            }
            else
            {
                TextBox1.Text = Session["Isbn"].ToString();
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message();", true);

            }
        }
    }
}


