<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="CIS470_Senior_Course_Project.ViewOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="747px">
            <br />
            <asp:Image ID="imgHomePage" runat="server" Height="30px" ImageUrl="~/Images/home.png" Width="30px" />
            <asp:LinkButton ID="linkHomePage" runat="server" PostBackUrl="~/MainPage.aspx">Home Page</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="grdViewOrder" runat="server" OnSelectedIndexChanged="grdViewOrder_SelectedIndexChanged">
            </asp:GridView>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/OrderInformationPage.aspx">&lt;&lt;Back</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </asp:Panel>
    </form>
</body>
</html>
