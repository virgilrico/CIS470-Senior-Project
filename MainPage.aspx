<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="555px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="1402px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="1429px">
            <br />
            <br />
            <asp:LinkButton ID="btnCustomerInformation" runat="server" style="text-align: left" PostBackUrl="~/CustomerInformationPage.aspx">Customer Information</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="btnOrderInformation" runat="server" OnClick="LinkButton2_Click">Order Information</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="btnInventoryInformation" runat="server">Inventory Information</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="btnUserAccessInformation" runat="server">User Access Infromation</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="btnQualityAssuranceChecklist" runat="server">Quality Assurance Checklist</asp:LinkButton>
        </asp:Panel>
    </form>
</body>
</html>
