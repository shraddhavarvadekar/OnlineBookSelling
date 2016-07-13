using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yourAccount : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");
    protected void Page_Load(object sender, EventArgs e)
    {

        // Response.Write(Session["user"].ToString());
    }
    protected void back_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    //protected void update_button_OnClick(object sender, EventArgs e)
    //{
        
    //}

    public bool isExistingName(string s)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        //if (allUsersList.Count() != 0)
        //{
        //    foreach (User user in allUsersList)
        //    {
        //        if (user.Name == s)
        //        {
        //            Response.Write(user.Name);
        //            return true;
        //        }
        //    }
        //}
        //string name = Session["user"].ToString();
        //Response.Write(name);
        string query = "select Name from VarvadekarS_WADfl15_Users";
        string username;

        SqlCommand command = new SqlCommand(query, conn);
        try
        {
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                username = reader["Name"].ToString();
                Response.Write("username" + username);
                if (username == s)
                {
                    return true;
                }
            }
        }
        finally
        {
            conn.Close();
        }
        return false;

        throw new NotImplementedException();
    }

    //protected void update_back_button_OnClick(object sender, EventArgs e)
    //{
        
    //}
    protected void update_back_button_Click(object sender, EventArgs e)
    {
        String user_log = Session["username"].ToString();
        //Response.Write(user_log);
        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        string user = Session["username"].ToString();
        // Response.Write(user_log);
        // if (isExistingName(user_log))
        //{
        string query = "update VarvadekarS_WADfl15_Users set AddressLine1 ='" + address1_text.Text + "', AddressLine2='" + address2_text.Text + "',City='" + city_text.Text + "',Zip='" + zip_text.Text + "',State='" + states.Text + "',Password='" + password_text.Text + "' where Name = '" + user + "'";

        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();

            command.ExecuteNonQuery();
            Response.Redirect("Default.aspx");
        }
        finally
        {
            conn.Close();
        }


        //    if (isExistingName(user_log))
        //    {
        //        User aUser = new User();

        //        aUser.AddressLine1 = address1.Text;
        //        aUser.AddressLine2 = address2.Text;
        //        aUser.City = city.Text;
        //        aUser.State = StateList.Text;
        //        aUser.Zip = zip.Text;
        //        aUser.Password = pwd.Text;
        //        allUsersList.Add(aUser);
        //        Session["CurrentUser"] = aUser;


        //        address1.Text = "";
        //        address2.Text = "";
        //        city.Text = "";
        //        zip.Text = "";
        //        pwd.Text = "";

        //        Response.Redirect("Default.aspx");
        //    }
        //}
    }
    protected void update_button_Click(object sender, EventArgs e)
    {
        string user_log = Session["username"].ToString();
        // Response.Write(user_log);
        // if (isExistingName(user_log))
        //{
        string query = "update VarvadekarS_WADfl15_Users set AddressLine1 ='" + address1_text.Text + "', AddressLine2='" + address2_text.Text + "',City='" + city_text.Text + "',Zip='" + zip_text.Text + "',State='" + states.Text + "',Password='" + password_text.Text + "' where Name = '" + user_log + "'";

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
        //}
    }
}