<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Library</title>
    <script type="text/javascript">
        function Message1() {
            alert(' The ISBN is required field');
        }
        function Message2() {
            alert(' The ISBN must be in a 999-999999999 format');
        }
        function
    </script>
    <style type="text/css">
        #Button1 {
            width: 77px;
            margin-left: 74px;
        }
        .auto-style1 {
            height: 113px;
            width: 171px;
        }
        .auto-style2 {
            width: 243px;
        }

        .auto-style3 {
            width: 174px;
        }

        .auto-style4 {
            width: 256px;
        }

        .auto-style5 {
            width: 259px;
        }
                .book_joint {
            width: 1321px;
            height: 148px;
        }
                       
         #get_quote {
            color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #get_quote:hover {
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">

            <div id="book_joint">
                <img  src="Images/bookiejoint.jpg" style="width: 1355px; height: 219px" />
            </div>

            <div id="nav">
                <div style="height: 50px; width: 100%">
                    <table width="100%">
                        <tr style="background-color: #F4A460">
                            <td height="50px">
                                <a href="Faq.aspx">FAQ's</a>

                            </td>
                            <td>
                                <a href="contactus.aspx">Contact Us</a>
                            </td>
                         <asp:Panel ID="Panel3" runat="server" Visible="false" >
                            <td>
                                <a href="yourAccount.aspx">Your Account</a>

                            </td>
                            <td>
                                <a href="whatYouSold.aspx">What You Sold</a>
                            </td>
                            </asp:Panel>
                            <asp:Panel ID="Panel1" runat="server" Visible="false" >
                            <td style="background-color: #FFFF00">
                                <a href="registration.aspx">Register</a>

                            </td>
                            <td style="background-color: #FFFF00">
                                <a href="registration.aspx">Login</a>
                            </td>
                        </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" Visible="false">

                                  <td style="background-color: #FFFF00">
                                      <asp:Label ID="text" runat="server" Text=""></asp:Label><br />
                            
                                    <a href="logout.aspx" >Logout </a>

                            </td>

                            </asp:Panel>
                        </tr>
                    </table>

                </div>

                <div id="ISBN">
                    <h2>Want to do a quick check on how much dollar you could get?</h2>
                    <h1>Enter ISBN Number:
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" runat="server" Text="*" ControlToValidate="isbn" ErrorMessage="The ISBN is required field"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="isbn" runat="server"  Height="26px" Width="250px"/>
                    
                        <asp:Button ID="get_quote" Text="Get Quote" OnClick="get_quote_OnClick" runat="server" /></h1>
                    <h4>What is ISBN number? <a href="isbn.aspx">Click Here</a></h4>
                </div>

                <div id="Ads1">
                    <h3>Worry about shipping cost? We pay for your shipping. Yes!!</h3>
                    <h3>We have paid millions of $$$$$$</h3>
                </div>

                <div id="Ads2">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <img src="Images/correct.png" height="50" width="50" /></td>
                            <td>
                                <h4><u>Price:</u> We update our price continuously to offer the best price online! </h4>
                            </td>
                            <td>
                                <img src="Images/correct.png" height="50" width="50" /></td>
                            <td>
                                <h4><u>Free Shipping:</u> We always offer free shipping. Print the label and you are done!</h4>
                            </td>
                            <td>
                                <img src="Images/correct.png" height="50" width="50" /></td>
                            <td>
                                <h4><u>Fast Payment:</u> We pay fast! All payments are processed within three business days of your item arriving!</h4>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <div id="finance">
                    <table style="width: 100%">
                        <tr style="background-color: #99FFFF">
                            <td class="auto-style4">
                                <img src="Images/visa.png" /></td>
                            <td class="auto-style5">
                                <img src="Images/mastercard.jpg" /></td>
                            <td class="auto-style2">
                                <img src="Images/discover.png" /></td>
                            <td class="auto-style3">
                                <img src="Images/paypal.jpg" /></td>
                            <td>
                                <img src="Images/american_express.jpg" /></td>
                        </tr>
                    </table>
                     <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="Timer1" Interval="1000" runat="server" />
        <asp:UpdatePanel ID="up1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                        <tr>
                            <td>
                                <asp:AdRotator ID="AdRotator1" runat="server" Height="250" Width="250" AdvertisementFile="~/adCreator.xml" KeywordFilter="book"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <td></td>
                            <td>
                                <asp:AdRotator ID="AdRotator2" runat="server" Height="250" Width="250" AdvertisementFile="~/adCreator.xml" KeywordFilter="book"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td></td>
                            <td>
                                <asp:AdRotator ID="AdRotator3" runat="server" Height="250" Width="250" AdvertisementFile="~/adCreator.xml" KeywordFilter="book"/>
                            </td>
                        </tr>
                </ContentTemplate>
            </asp:UpdatePanel>

                </div>
            </div>
    </form>
</body>
</html>
