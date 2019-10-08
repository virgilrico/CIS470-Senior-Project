<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.OrderInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="488px" ImageUrl="~/Images/facebook_cover_photo_1.png" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="948px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Search order by order ID"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">Create New Order</asp:LinkButton>
        </asp:Panel>
    </form>
</body>
</html>
