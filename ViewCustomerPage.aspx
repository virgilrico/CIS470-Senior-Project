<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="CIS470_Senior_Course_Project.ViewCustomer" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="867px">
            <asp:GridView ID="grdViewCustomer" runat="server">
            </asp:GridView>
            <br />
            &nbsp;<asp:LinkButton ID="LinkButtonBack" runat="server" PostBackUrl="~/CustomerInformationPage.aspx">Back</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="linkButtonMainPage" runat="server" PostBackUrl="~/MainPage.aspx">Main Page&gt;&gt;</asp:LinkButton>
        </asp:Panel>
    </form>
</body>
</html>
