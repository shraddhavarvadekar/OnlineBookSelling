using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.Security;
using System.Web.Profile;

public partial class passwordRecovery : System.Web.UI.Page
{


    SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432015fa04varvadekars;User Id=varvadekars;Password=1407449;Asynchronous Processing=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void recover_button_OnClick(object sender, EventArgs e)
    {
        User usr = new User();
        string useremail_id = email_text_recover.Text;
        int present = Convert.ToInt16(Session["present"]);

        string sql = "select emailAddress,Password from VarvadekarS_WADfl15_Users where emailAddress = '" + useremail_id + "'";
        SqlCommand command = new SqlCommand(sql, conn);

        try
        {
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Session["pwd"] = reader["Password"].ToString();
            }
        }
        finally
        {
            conn.Close();
        }

        if (present == 1)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message1();", true);
            usr.EmailAddress = email_text_recover.Text;
            if (emailExist(useremail_id))
            {
                MailMessage msg = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.UseDefaultCredentials = false;
                MailAddress add = new MailAddress("waduhcl@gmail.com");
                MailAddress add2 = new MailAddress(useremail_id);
                List<MailAddress> list = new List<MailAddress>();
                list.Add(add2);

                msg.From = add;
                msg.To.Add(add2);
                msg.Subject = "We have recovered your password!";
                msg.Body = "Dear Valued Cutomer <br/> You are receiving this email because you requested to reover your password.<br/>Your current password is '" + Session["pwd"].ToString() + "'<br/>Thank you.<br/>Bookie Joint.com Team";
                msg.IsBodyHtml = true;
                try
                {
                    smtp.Credentials = new System.Net.NetworkCredential("waduhcl@gmail.com", "UHCLuhcl");
                    smtp.EnableSsl = true;
                    smtp.Send(msg);
                }
                catch (Exception e1)
                {
                    Response.Write(e1.ToString());

                    // Response.Redirect("Default.aspx");
                }



                //MailDefinition msg = new MailDefinition();
                //msg.From = "uhcl@edu";
                //msg.Subject = "We have received yourpassword!";
                //msg.BodyFileName = "your new password";
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Message2();", true);

        }

    }
    //protected void txtEmail_TextChanged(object sender, EventArgs e)
    //{

    //    string useremail_id = email_text_recover.Text;
    //    List<User> allUsersList = Application["AllUsersList"] as List<User>;
    //    if (emailExist(useremail_id))
    //    {
    //        Session["present"]= true;

    //    }
    //    else
    //    {
    //        Session["present"] = false;
    //    }
    //}
    public bool emailExist(string useremail_id)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        //if (allUsersList.Count() != 0)
        //{
        //    foreach (User user in allUsersList)
        //    {
        //        if (user.EmailAddress == useremail_id)
        //        {
        //            return true;
        //        }
        //    }
        //}
        string query = "select emailAddress from VarvadekarS_WADfl15_Users";
        string email;
        SqlCommand command = new SqlCommand(query, conn);
        try
        {
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                email = reader["emailAddress"].ToString();
                if (email == useremail_id)
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

    protected void email_text_recover_TextChanged(object sender, EventArgs e)
    {
        string useremail_id = email_text_recover.Text;
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        if (emailExist(useremail_id))
        {
            Session["present"] = true;

        }
        else
        {
            Session["present"] = false;
        }
    }
}