<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Registration</title>
    <script>
        function Message1() {
            alert('Your Email Address is already registered in our database.Please login.');
        }
        function Message2() {
            alert('Thank Yor for registration.Please login.');
        }
        function Message3() {
            alert('Sorry! You are not a registered user.Please login.');
        }
        function Message4() {
            alert('Sorry! No User registered.Please register first.');
        }
    </script>
    <style>
         .banner {
            width: 1367px;
            height: 218px;
            margin-right: 102px;
            margin-bottom: 0px;
        }
          body{
        background-image:url("images/bck.jpg");
    }

             #backbutton{

           color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #backbutton:hover {
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
         }
             #registration_button{

           color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #registration_button:hover {
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
         }
             #login_button{

           color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #login_button:hover {
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
         }
       #forgot_button{

           color: #900;
            background: #FF0;
            font-weight: bold;
            border: 1px solid #900;
            width: 150px;
            height: 30px;
        }

      #forgot_button:hover {
                color: #FFF;
                background: #900;
                width: 150px;
                height: 30px;
         }
      .book_joint {
            width: 1321px;
            height: 148px;
        }
        #information{
        float:left;
        background-color:aqua;
    }
            #loginstyle{
        float:right;
        background-color:lightblue;
    }
                    #book_joint {
            width: 1333px;
            height: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
              <div>
                <img id="book_joint" src="Images/bookiejoint.jpg"/>
            </div>
        <div id="steps">
            <h3>Just few steps...</h3>
        </div>
        <div id="main" style="width:100%;">
            <div id="information" style="width:60%;">
            <h2>Personal Information</h2>
            <h4>Tell us a little about yourself. This information is <b>only</b> used so that we can <b>pay</b> you, provide a <b>free shipping label,</b> and <b>communicate with you.</b></h4>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        Your Name                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="name_text" runat="server" ValidationGroup="a" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="name_text" runat="server" Height="22px" MaxLength="100" Width="400px"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Address Line 1                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="address1_text" ValidationGroup="a" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="address1_text" runat="server" Height="22px" MaxLength="100" Width="400px"/>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow>
                    <asp:TableCell>
                        Address Line 2
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="address2_text" runat="server" Height="22px" MaxLength="100" Width="400px"/>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow>
                    <asp:TableCell>
                        City                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="city_text" ForeColor="red" ValidationGroup="a" ErrorMessage="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="city_text" runat="server" Height="22px" MaxLength="100" Width="400px"/>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow>
                    <asp:TableCell>
                        Zip                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  runat="server" ControlToValidate="zip_text" ForeColor="red" ValidationGroup="a" ErrorMessage="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="zip_text" runat="server" Height="22px" MaxLength="100" Width="400px"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="zip_text" ValidationGroup="a" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" ForeColor="red" ErrorMessage="Invalid zip" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow>
                    <asp:TableCell>
                        State
                     </asp:TableCell>  
                      <asp:TableCell>
                  <asp:DropDownList id="states" runat="server">
                    <asp:ListItem Value="AL">AL</asp:ListItem>
                                <asp:ListItem Value="AK">AK</asp:ListItem>
                                <asp:ListItem Value="AZ">AZ</asp:ListItem>
                                <asp:ListItem Value="AR">AR</asp:ListItem>
                                <asp:ListItem Value="CA">CA</asp:ListItem>
                                <asp:ListItem Value="CO">CO</asp:ListItem>
                                <asp:ListItem Value="CT">CT</asp:ListItem>
                                <asp:ListItem Value="DE">DE</asp:ListItem>
                                <asp:ListItem Value="FL">FL</asp:ListItem>
                                <asp:ListItem Value="GA">GA</asp:ListItem>
                                <asp:ListItem Value="HI">HI</asp:ListItem>
                                <asp:ListItem Value="ID">ID</asp:ListItem>
                                <asp:ListItem Value="IL">IL</asp:ListItem>
                                <asp:ListItem Value="IN">IN</asp:ListItem>
                                <asp:ListItem Value="IA">IA</asp:ListItem>
                                <asp:ListItem Value="KS">KS</asp:ListItem>
                                <asp:ListItem Value="KY">KY</asp:ListItem>
                                <asp:ListItem Value="LA">LA</asp:ListItem>
                                <asp:ListItem Value="ME">ME</asp:ListItem>
                                <asp:ListItem Value="MD">MD</asp:ListItem>
                                <asp:ListItem Value="MA">MA</asp:ListItem>
                                <asp:ListItem Value="MI">MI</asp:ListItem>
                                <asp:ListItem Value="MN">MN</asp:ListItem>
                                <asp:ListItem Value="MS">MS</asp:ListItem>
                                <asp:ListItem Value="MO">MO</asp:ListItem>
                                <asp:ListItem Value="MT">MT</asp:ListItem>
                                <asp:ListItem Value="NE">NE</asp:ListItem>
                                <asp:ListItem Value="NV">NV</asp:ListItem>
                                <asp:ListItem Value="NH">NH</asp:ListItem>
                                <asp:ListItem Value="NJ">NJ</asp:ListItem>
                                <asp:ListItem Value="NM">NM</asp:ListItem>
                                <asp:ListItem Value="NY">NY</asp:ListItem>
                                <asp:ListItem Value="NC">NC</asp:ListItem>
                                <asp:ListItem Value="ND">ND</asp:ListItem>
                                <asp:ListItem Value="OH">OH</asp:ListItem>
                                <asp:ListItem Value="OK">OK</asp:ListItem>
                                <asp:ListItem Value="OR">OR</asp:ListItem>
                                <asp:ListItem Value="PA">PA</asp:ListItem>
                                <asp:ListItem Value="RI">RI</asp:ListItem>
                                <asp:ListItem Value="SC">SC</asp:ListItem>
                                <asp:ListItem Value="SD">SD</asp:ListItem>
                                <asp:ListItem Value="TN">TN</asp:ListItem>
                                <asp:ListItem Value="TX">TX</asp:ListItem>
                                <asp:ListItem Value="UT">UT</asp:ListItem>
                                <asp:ListItem Value="VT">VT</asp:ListItem>
                                <asp:ListItem Value="VA">VA</asp:ListItem>
                                <asp:ListItem Value="WA">WA</asp:ListItem>
                                <asp:ListItem Value="WV">WV</asp:ListItem>
                                <asp:ListItem Value="WI">WI</asp:ListItem>
                                <asp:ListItem Value="WY">WY</asp:ListItem>     
      </asp:DropDownList>
     
                    </asp:TableCell>
                   
                </asp:TableRow>
            </asp:Table>
            <hr />
            <div style:"font-color= blue">
            <h2>Login Information</h2>
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            Email Address                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="red" ValidationGroup="a" ControlToValidate="emailaddress_text" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="emailaddress_text" runat="server" Height="22px" MaxLength="100" Width="400px"/>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ErrorMessage="Invalid Email Address" ForeColor="Red" ControlToValidate="emailaddress_text" ValidationGroup="a" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ></asp:RegularExpressionValidator>

                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            Password                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red" ValidationGroup="a" ControlToValidate="password_text" ErrorMessage="*"></asp:RequiredFieldValidator>

                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="password_text" runat="server" Height="22px" MaxLength="100" Width="400px" TextMode="Password"/>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="password_text" ValidationGroup="a" ForeColor="Red" ValidationExpression="^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^@#$%]).{8,10})$" ErrorMessage="Invalid password"></asp:RegularExpressionValidator>

                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            Confirm Password                          

                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="confirmpassword_text" runat="server" Height="22px" MaxLength="100" Width="400px" TextMode="Password"/>
                           
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="confirmpassword_text" ControlToCompare="password_text" ForeColor="Red" ValidationGroup="a" ErrorMessage="password doesn't match"></asp:CompareValidator>


                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table></div>
                <hr /> 
                  <div id="payment" style:"font-color= blue">
            <h2>Pay me by</h2>
                      <asp:RadioButton GroupName="Payment" ID="check" runat="server" text="Check" />
                      <asp:RadioButton GroupName="Payment" ID="paypal" runat="server" text="Paypal" />
                      </div><br />
            <asp:Button id="backbutton" Text="Go to main page" OnClick="backbutton_OnClick" runat="server" />
         <asp:Button id="registration_button" Text="Complete Registration" OnClick="registration_button_OnClick" runat="server" ValidationGroup="a" />
        
     </div>

        <div id="loginstyle" style="width:40%;">
           <h2>Already have an account</h2>
            <h4>Login</h4>
              <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        Email Address<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="login_email" ValidationGroup="b" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="login_email" runat="server" Height="22px" MaxLength="100" Width="180px"/>
                    </asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell>
                        Password<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ValidationGroup="b" ControlToValidate="login_password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="login_password" runat="server" Height="22px" MaxLength="100" Width="180px" TextMode="Password"/>
                    </asp:TableCell>
                </asp:TableRow>
                 
                   <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button id="login_button" Text="Login" OnClick="login_button_OnClick" runat="server"  ValidationGroup="b"/>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button id="forgot_button" Text="Forgot Password" OnClick="forgot_button_OnClick" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
</asp:Table>
        </div>
            </div>
        </div>
    </form>
</body>
</html>
