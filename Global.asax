<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startupusing System;


        //List<Books> books = new List<Books>();


        //Books b1 = new Books("978-1449311520", "adoop: The Definitive Guide", "Tom White", "15.99");
        //Books b2 = new Books("978-0735667044", "Microsoft Visual Basic 2013 Step by Step", "Michael Halvoson", "9.50");
        //Books b3 = new Books("978-0993088100", "Fifty Quick Ideas to Improve Your User Stories", "David Evens/Gojko Adzick", "33.00");
        //Books b4 = new Books("978-1428336117", "The Medical Manager Student Edition", "David Fitzpatrick", "99.00");
        //Books b5 = new Books("978-0769302652", "Introduction to Language Development", "Scott McLaughlin", "55.00");
        //Books b6 = new Books("978-0354242452", "Basic Plumbing, The Complete Beginner's Guide", "Maning Gibralta", "29.99");
        //Books b7 = new Books("978-0071457743", "Engineering Formulas", "George Geick", "11.50");
        //Books b8 = new Books("978-1885071293", "Handyman In-Your-Pocket", "Richard Allen Young", "5.99");
        //Books b9 = new Books("978-1591260905", "Chemical Engineering Solved Problems", "NS Nandagopal", "45.00");
        //Books b10 = new Books("978-1491950357", "Building Microservices", "Sam Newman", "19.99");
        //books.Add(b1);
        //books.Add(b2);
        //books.Add(b3);
        //books.Add(b4);
        //books.Add(b5);
        //books.Add(b6);
        //books.Add(b7);
        //books.Add(b8);
        //books.Add(b9);
        //books.Add(b10);

        List<User> allUsersList = new List<User>();
       
       // Application["Books"] = books;
        Application["AllUsersList"] = allUsersList;
        //Application["ISBNNumbers"] = new string[] { "978-1449311520", "978-0735667044", "978-0993088100", "978-1428336117", "978-0769302652", "978-0354242452", "978-0071457743", "978-1885071293", "978-1591260905", "978-1491950357" };
        //Application["Titles"] = new string[] { "adoop: The Definitive Guide", "Microsoft Visual Basic 2013 Step by Step", "Fifty Quick Ideas to Improve Your User Stories", "The Medical Manager Student Edition", "Introduction to Language Development", "Basic Plumbing, The Complete Beginner's Guide", "Engineering Formulas", "Handyman In-Your-Pocket", "Chemical Engineering Solved Problems", "Building Microservices" };
        //Application["price"] = new string[] { "15.99", "9.50", "33.00", "99.00", "55.00", "29.99", "11.50", "5.99", "45.00", "19.99" };

        SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");

        string sqlStatement = "select * from VarvadekarS_WADfl15_BookInfor";

        SqlCommand command = new SqlCommand(sqlStatement, conn);
        try
        {
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                //Books book = new Books();

                //book.SetIsbn((string)reader["isbnNumber"]);
                //book.SetTitle((string)reader["Title"]);
                //book.SetAuthor((string)reader["Author"]);
               // book.SetBuyPrice(reader["Buy_Price"]);
               // book.SetBuyPrice((string)reader["Buy_Price"]);

                Application["ISBNNumbers"] = (string)reader["isbnNumber"];
                Application["Title"] = (string)reader["Title"];
                Application["Author"] = (string)reader["Author"];
                Application["price"] = reader["Buy_Price"];
            }
        }
        finally
        {
            conn.Close();
        }
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        Application.Clear();
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {

        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
