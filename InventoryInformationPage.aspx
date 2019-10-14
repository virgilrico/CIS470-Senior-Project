<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.InventoryInformationPage" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="1010px">
            <asp:Label ID="Label1" runat="server" Text="Search for item by item name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSearchItem" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btnSearch" runat="server" Text="Search" PostBackUrl="~/ViewItem.aspx" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorItem" runat="server" ControlToValidate="txtSearchItem" ErrorMessage="Please enter the product name " ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
