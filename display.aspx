<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Library</title>
    <script type="text/javascript">
        function Message() {
            alert('Sorry! The ISBN number you entered is not found in our database');
        }

        function Message1() {
            alert('Thank you for your business.\n Your account will be updated after we receive the book.\n A confirmation email has been sent to the email address in our file.');
        }
        function Message3() {
            alert(' The ISBN must be in a 999-999999999 format');
        }

    </script>
    <style>
              .book_joint {
            width: 1321px;
            height: 148px;
        }
                      
         #isbn_button {
                color: #900;
                background: #FF0;
                font-weight: bold;
                border: 1px solid #900;
                width: 150px;
                height: 30px;
            }

          #isbn_button:hover {
                    color: #FFF;
                    background: #900;
                    width: 150px;
                    height: 30px;
             }

                  
         #sell_book_button {
                color: #900;
                background: #FF0;
                font-weight: bold;
                border: 1px solid #900;
                width: 150px;
                height: 30px;
            }

          #sell_book_button:hover {
                    color: #FFF;
                    background: #900;
                    width: 150px;
                    height: 30px;
             }

                  
         #no_thanks_button {
                color: #900;
                background: #FF0;
                font-weight: bold;
                border: 1px solid #900;
                width: 150px;
                height: 30px;
            }

          #no_thanks_button:hover {
                    color: #FFF;
                    background: #900;
                    width: 150px;
                    height: 30px;
             }
                #display_isbn{
            width: 1000px;
            height: 50px;
            padding-left:20em;
            background-color:aliceblue;
      }
                      #details{
          width: 1321px;
          height: 148px;
          padding-left:25em;
          background-color:aliceblue;
      }
                          #image{
          background-color:darkslateblue;
      }

                          #check_isbn{
                color: #900;
                background: #FF0;
                font-weight: bold;
                border: 1px solid #900;
                width: 150px;
                height: 30px;
            }

          #check_isbn:hover {
                    color: #FFF;
                    background: #900;
                    width: 150px;
                    height: 30px;
             }
    </style>
</head>
<body style="background-color:lightblue">
    <form id="form1" runat="server">
    
    
  <div>
        <asp:Image ID="book_joint" runat="server" alt="bookiejoint" class="book_joint" src="Images/bookiejoint.jpg" />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="ISBN Number" Font-Bold="True" Font-Size="X-Large" Font-Names="Lucida Console" ForeColor="#990000"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="250px"/>
&nbsp;&nbsp;
                    <asp:Button id="check_isbn" Text="Check another ISBN" OnClick="check_isbn_Click1" runat="server" />
                </td>
            </tr>
            <tr style="align-content:center">
                <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image2" runat="server" imagealign="Middle"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="title" runat="server" Text="Title" Font-Bold="True" Font-Size="X-Large" Font-Names="Lucida Console" ForeColor="#990000"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="title_box" runat="server" Height="26px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="author" runat="server" Text="Author" Font-Bold="True" Font-Size="X-Large" Font-Names="Lucida Console" ForeColor="#990000"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="author_box" runat="server" Height="26px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="price" runat="server" Text="Buy Price" Font-Bold="True" Font-Size="X-Large" Font-Names="Lucida Console" ForeColor="#990000"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="price_box" runat="server" Height="26px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="sell_book_button" runat="server" Text="Sell This Book" OnClick="sell_book_button_OnClick" Enabled="false"/>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="no_thanks_button" runat="server" Text="No Thanks" ForeColor="#3333FF" OnClick="no_thanks_button_OnClick" />
                </td>
            </tr>
        </table>
    </div>
    
    </form>
</body>
</html>
