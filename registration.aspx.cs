using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public bool emailExist(string present)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        if (allUsersList.Count() != 0)
        {
            foreach (User user in allUsersList)
            {
                if (user.EmailAddress == present)
                {
                    return true;
                }
            }
        }
        return false;

        throw new NotImplementedException();
    }




    public void login_button_OnClick(Object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        string s = login_email.Text;
        string p = login_password.Text;

        string query = "select emailAddress,Password,Name from VarvadekarS_WADfl15_Users";
        string email;
        string pwd;
        SqlCommand command = new SqlCommand(query, conn);
        try
        {
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                email = reader["emailAddress"].ToString();
                pwd = reader["Password"].ToString();
                if (email == s)
                {
                    if (pwd == p)
                    {
                        Session["currentUser"] = reader["Name"].ToString();
                        Session["email"] = reader["emailAddress"].ToString();
                        //   Session["password"] = reader["Password"].ToString();
                        Response.Redirect("~/Default.aspx");
                    }
                }
                else
                {
                    // Session["password"] = reader["Password"].ToString();
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage3();", true);
                }
            }
        }
        finally
        {
            conn.Close();
        }


        //if (allUsersList.Count() != 0)
        //{
        //    foreach (User user in allUsersList)
        //    {
        //        if (user.EmailAddress == s)
        //        {
        //            if (user.Password == Password.Text)
        //            {
        //                Session["currentUser"] = user.Name;
        //                Response.Redirect("~/Default.aspx");

        //            }
        //        }
        //        else
        //        {
        //            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage3();", true);

        //        }
        //    }
        //}
        //else
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage4();", true);
        //}
    }
    public void forgot_button_OnClick(Object sender, EventArgs e)
    {
        Response.Redirect("passwordRecovery.aspx", true);
    }
    protected void backbutton_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", true);
    }
    protected void registration_button_OnClick(object sender, EventArgs e)
    {
        string present = emailaddress_text.Text;
        List<User> allUsersList = Application["AllUsersList"] as List<User>;



        if (emailExist(present))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message1();", true);

        }
        else
        {
            User aUser = new User();

            aUser.Name = name_text.Text;
            aUser.AddressLine1 = address1_text.Text;
            aUser.AddressLine2 = address2_text.Text;
            aUser.City = city_text.Text;
            aUser.EmailAddress = emailaddress_text.Text;
            aUser.State = states.Text;
            aUser.Zip = zip_text.Text;
            aUser.Password = password_text.Text;
            allUsersList.Add(aUser);
            Session["CurrentUser"] = aUser;
          //  ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message2();", true);

            string queryStatement = "insert into VarvadekarS_WADfl15_Users (emailAddress,Name,AddressLine1,AddressLine2,City,Zip,State,Password) values ('" + emailaddress_text.Text + "','" + name_text.Text + "','" + address1_text.Text + "','" + address2_text.Text + "','" + city_text.Text + "','" + zip_text.Text + "','" + states.Text + "','" + password_text.Text + "')";
            //string updateQuery = "insert into VarvadekarS_WADfl15_Transactions (emailAddress,isbnNumber,dateSold) values ('" + email.Text + "','" + email.Text + "'
            SqlCommand command = new SqlCommand(queryStatement, conn);
            try
            {
                conn.Open();

                command.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage2();", true);

        }

    }
}

