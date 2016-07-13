<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    
    <title>Contact US</title>
    <style>
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
    <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;
        function loadXMLDoc() {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readData;
            xmlhttp.open("GET", "contactUs.xml", true);
            xmlhttp.send();
        }
        function readData() {
            if (xmlhttp.readyState == 4) {
                xmlDoc = xmlhttp.responseXML;
                var items = xmlDoc.getElementsByTagName("info");
                var nextValue1 = items[0].getAttribute("contact-phone");
                var nextValue2 = items[0].getAttribute("contact-email");
                var nextValue3 = items[0].getAttribute("address-street");
                var nextValue4 = items[0].getAttribute("address-city");
                var nextValue5 = items[0].getAttribute("address-state");
                var nextValue6 = items[0].getAttribute("address-zip");
                document.getElementById("phone_text").innerHTML = nextValue1;
                document.getElementById("email_text").innerHTML = nextValue2;
                var nextValue7 = nextValue3 + ' ' + nextValue4 + ' ' + nextValue5 + ' ' + nextValue6;
                document.getElementById("address_text").innerHTML = nextValue7;

            }
        }
</script>

</head>
<body onload="loadXMLDoc()">
    <form id="form1" runat="server">
    <div>
     <div id ="book_joint">
         <img src="Images/bookiejoint.jpg" align="middle" style="width: 1378px; height: 177px" />
         </div>

       <div>
           <div>

            <table align ="center">
               <tr>
                   <td>
                       <asp:Label ID="phone" runat="server" Text="Contact Phone &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                   </td>
                  <td>
                   <asp:Label ID="phone_text" runat="server" Text="Label"></asp:Label>
                  </td>
               </tr>
               <tr>
                   <td>
                    <asp:Label ID="email" runat="server" Text="Contact E-mail"></asp:Label>
                   </td>
                  <td>
                    <asp:Label ID="email_text" runat="server" Text="Label"></asp:Label>
                  </td>
               </tr>
               <tr>
                   <td>
                    <asp:Label ID="address" runat="server" Text="Mailing Address"></asp:Label>
                   </td>
                  <td>
                    <asp:Label ID="address_text" runat="server" Text="Label"></asp:Label>
                  </td>
               </tr> 

           </table>

 <p style="text-align: center;"><input id= "back_button" type="button" onclick="location.href = 'Default.aspx';" value="Back to Main Page" /></p>
           

       </div>
    </div>
    </form>
</body>
</html>