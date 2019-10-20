<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCustomer.aspx.cs" Inherits="CIS470_Senior_Course_Project.SearchCustomer" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="599px">
            <asp:Label ID="Label1" runat="server" Text="Search for customer by last name"></asp:Label>
            &nbsp;<asp:TextBox ID="txtSearchName" runat="server" ></asp:TextBox>
            &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" PostBackUrl="~/ViewCustomer.aspx" Text="Search" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSearchName" ErrorMessage="Please enter customer last name" ForeColor="Red"></asp:RequiredFieldValidator>
        </asp:Panel>
    </form>
</body>
</html>
