<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" style="margin-right: 0px" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="876px" Width="2184px">
            <div class="auto-style1" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="imgLogin" runat="server" ImageUrl="~/Images/iconfinder_Login Manager_7261.png" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Black" Text="USER LOGIN"></asp:Label>
                <br />
                &nbsp;<div class="auto-style2">
                    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/MainPage.aspx" Height="251px" OnAuthenticate="Login1_Authenticate" TitleText="Please enter your UserName and Password in order to login to the system" Width="575px" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" style="margin-left: 0px; margin-right: 0px">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                </div>
                &nbsp;&nbsp;
         
            </div>
        </asp:Panel>
        </center>
    </form>
</body>
</html>
