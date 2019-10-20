<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" style="margin-right: 0px" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="582px" Width="2874px">
            <asp:Login ID="Login1" runat="server" Height="318px" TitleText="Please enter your UserName and Password in order to login to the system" Width="783px" DestinationPageUrl="~/MainPage.aspx" OnAuthenticate="Login1_Authenticate">
            </asp:Login>
        </asp:Panel>
    </form>
</body>
</html>

