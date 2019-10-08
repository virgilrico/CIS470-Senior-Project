<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.InventoryInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="483px" ImageUrl="~/Images/facebook_cover_photo_1.png" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="1010px">
            <asp:Label ID="Label1" runat="server" Text="Search for items by item ID, Name or Manufacturer"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
