<%@ Page Language="C#" AutoEventWireup="true" CodeFile="whatYouSold.aspx.cs" Inherits="whatYouSold" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>What You Sold</title>

    <style type="text/css">
        body{
        background-image:url("Images/bck.jpg");
        }
        .banner {
            width: 858px;
            height: 126px;
        }
        #main_page_button{
            color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }
        #main_page_button:hover{
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
        }
        #sell_book_button{
            color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }
        #sell_book_button:hover{
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

            <div id="book_joint">
                <img src="Images/bookiejoint.jpg" style="width: 1215px; height: 176px" />
            </div>
    <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="Label1" runat="server" Text="User Name" Font-Bold="True" Font-Names="Batang" Font-Size="Medium" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text=""><%=Session["username"].ToString()%></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="User Email Address" Font-Bold="True" Font-Names="Batang" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label4" runat="server"><%=Session["email"].ToString() %></asp:Label>
    </asp:Panel>
 
        <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="#FFFFCC" AlternatingRowStyle-ForeColor="Black" BorderColor="#000099" BackColor="#CCFFFF">
          <%--  <Columns>
                <asp:BoundField DataField="isbnNumber" HeaderText="ISBN NUMBER" />
                <asp:BoundField DataField="Title" HeaderText="TITLE" />
                <asp:BoundField DataField="dateSold" HeaderText="DATE SOLD" />
                <asp:BoundField DataField="Buy_Price" HeaderText="BUY PRICE" />
            </Columns>--%>
<AlternatingRowStyle BackColor="#FFFFCC" ForeColor="Black" BorderColor="#CCCCCC"></AlternatingRowStyle>
        </asp:GridView>
     <%--<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder> --%>
    </div>
        <p>
 

        <asp:Button id="main_page_button" Text="Go to main page" OnClick="main_page_button_OnClick" runat="server" />
        <asp:Button id="sell_book_button" Text="Sell Another Book" OnClick="sell_book_button_OnClick" runat="server"/>
        </p>
    </form>
</body>
</html>
