<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordRecovery.aspx.cs" Inherits="passwordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" />
    <title>Password  Recovery</title>
<script>
    function Message1() {
        alert('Your password has been sent to your email address.');
    }
    function Message2() {
        alert('Your account email cannot be verified.');
    }
</script>
    <style>
               .banner {
            width: 923px;
        }
          body{
        background-image:url("images/bck.jpg");
    }

             #recover_button{

           color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #recover_button:hover {
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
         }
      .book_joint {
            width: 1321px;
            height: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id ="book_joint">
         <img src="Images/bookiejoint.jpg" style="width: 1371px; height: 190px" />
         </div>
                <div>
            <h3><font color="#24248F">Password Recovery</font></h3>
            <div>
                <asp:Label ID="email_add" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="email_text_recover" runat="server"  Height="22px" MaxLength="100" Width="400px" AutoPostBack="true" OnTextChanged="email_text_recover_TextChanged" />
               <%-- <asp:TextBox ID="email_text_recover" runat="server" AutoPostBack="True" Height="22px" MaxLength="100" Width="400px" OnTextChanged="email_text_recover_TextChanged"></asp:TextBox>--%>
                <asp:Button ID="recover_button" runat="server" Text="Recover Password" OnClick="recover_button_OnClick" />
            </div>
            <div>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Go Back to Main Page</asp:HyperLink>
            </div>
        </div>
<%--     <div>
         <h2>Password Recovery</h2>
         <asp:Label ID="email_recover" runat="server" Text="Email Address"></asp:Label>
         <asp:TextBox ID="email_text_recover" runat="server"  Height="22px" MaxLength="100" Width="400px" AutoPostBack="true" OnTextChanged="email_text_recover_TextChanged" />
          <asp:Button id="recover_button" Text="Recover Password" OnClick="recover_button_OnClick" runat="server" /><br />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="Default.aspx">Go Back to Main Page</a>
     </div>--%>
    </div>
    </form>
</body>
</html>
