<%@ Page Language="C#" AutoEventWireup="true" CodeFile="isbn.aspx.cs" Inherits="isbn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ISBN</title>
    <style type="text/css">
        .img_place {
            width: 382px;
            height: 233px;
        }
        body{
        background-image:url("images/bck.jpg");
    }
         #Button1{
                color: #900;
                background: #FF0;
                font-weight: bold;
                border: 1px solid #900;
                width: 150px;
                height: 30px;
        }
        #Button1:hover{
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
        }
            .book_joint {
        width: 1321px;
            height: 148px;
        }
        #book_joint {
            width: 1333px;
            height: 206px;
        }
    </style>

    <script runat="server">
        void back_button_Click(Object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    </script>
</head>
<body>
     <%--action ="Default.aspx"--%>
    <form method ="post" runat="server">
    <div>
         <div>
                <img id="book_joint" src="Images/bookiejoint.jpg"/>
            </div>
    <h2><center><b><font style ="color:blue;">How Do I find my book's ISBN?</font></b></center></h2>
    <h4><center><font style ="color:blue;">Your books ISBN number can usually e found on the back of the book above the barcode.</center></font></h4>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <center><asp:Image ID="img_place" runat="server" alt="isbn" class="img_place" src="Images/isbn.PNG" ></asp:Image><%--<img alt="isbn" class="img_place" src="Images/isbn.PNG" />--%></center>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em style="font-size:small; text-align:right;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Image Source: unit4-client-side-development_1.7-intro-to-ajax</em><br />
    <h4><center><font style ="color:blue;">An ISBN can be a 10 or 13 digit number and bookiejoint pricing tool accepts both. If your book does not have a barcode or a sticker is covering the barcode you can usually find the ISBN inside of the front title page were you would find publisher information. Books published before 1970 do not have ISBN numbers and we cannot buy them.</center></font></h4>
    </div>
        <center>  <asp:Button ID="Button1" name ="back_button" value="Back to Main Page " runat="server" Text="Back to Main Page" OnClick="back_button_Click"></asp:Button>
        <%--<input type ="submit" name ="back_button" id="back_button" value="Back to Main Page "/>--%></center>
    </form>
</body>
</html>




















<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="isbn.aspx.cs" Inherits="isbn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>ISBN</title>
    <style type="text/css">
        .banner {
            width: 923px;
        }
          body{
        background-image:url("images/bck.jpg");
    }

             #back_button{

           color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #back_button:hover {
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
         <img src="Images/bookiejoint.jpg" />
    </div>
    <div>
    <h2><center><b><font style ="color:blue;">How Do I find my book's ISBN?</font></b></center></h2>
    <h4><center><font style ="color:blue;">Your books ISBN number can usually e found on the back of the book above the barcode.</center></font></h4>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <center><asp:Image ID="img_place" runat="server" alt="isbn" class="img_place" src="Images/isbn.PNG" ></asp:Image><%--<img alt="isbn" class="img_place" src="Images/isbn.PNG" />--%></center>
<%--    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em style="font-size:small; text-align:right;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Image Source: unit4-client-side-development_1.7-intro-to-ajax</em><br />
    <h4><center><font style ="color:blue;">An ISBN can be a 10 or 13 digit number and bookiejoint pricing tool accepts both. If your book does not have a barcode or a sticker is covering the barcode you can usually find the ISBN inside of the front title page were you would find publisher information. Books published before 1970 do not have ISBN numbers and we cannot buy them.</center></font></h4>
    </div>    
<div>
<center><input id="back_button" type="button" onclick="location.href = 'Default.aspx';" value="Back to Main Page" /></center>

    </div>
    </form>
</body>
</html>--%>
