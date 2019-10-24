<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewItem.aspx.cs" Inherits="CIS470_Senior_Course_Project.ViewItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
           <center> <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Images/home.png" Width="30px" />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/MainPage.aspx">Home Page</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="grdViewItem" runat="server">
            </asp:GridView>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SearchInventory.aspx">&lt;&lt;Back</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </asp:Panel>
    </form>
</body>
</html>
