<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="CIS470_Senior_Course_Project.ViewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 618px">
    <form id="form1" runat="server">
        <div>
           <center> <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="708px">
            <asp:Image ID="imgHomePage" runat="server" Height="30px" ImageUrl="~/Images/home.png" Width="30px" />
            <asp:LinkButton ID="linkButtonMainPage" runat="server" PostBackUrl="~/MainPage.aspx">Home Page</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="grdViewCustomer" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            &nbsp;<asp:LinkButton ID="LinkButtonBack" runat="server" PostBackUrl="~/CustomerInformationPage.aspx" OnClick="LinkButtonBack_Click">&lt;&lt;Back</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    </form>
</body>
</html>
