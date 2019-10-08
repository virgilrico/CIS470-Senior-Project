<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.CustomerInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1425px">
            <asp:Image ID="Image1" runat="server" Height="467px" ImageUrl="~/Images/facebook_cover_photo_1.png" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="1405px">
            <div class="auto-style1">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Search for customer by last name"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" />
                <br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <asp:LinkButton ID="btnAddCustomer" runat="server" PostBackUrl="~/AddCustomerPage.aspx">Add Customer</asp:LinkButton>
                &nbsp;
                <asp:ImageButton ID="imgBtnAddCustomer" runat="server" ImageUrl="~/Images/iconfinder_selected_user_1902265.png" Width="201px" />
                <br />
                <br />
                <asp:LinkButton ID="btnEditCustomer" runat="server" PostBackUrl="~/EditCustomerPage.aspx">Edit Customer</asp:LinkButton>
                &nbsp;&nbsp;
                <asp:ImageButton ID="imgBtnEditCustomer" runat="server" ImageUrl="~/Images/iconfinder_user_close_edit_103748.png" Width="169px" />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MainPage.aspx" style="text-align: left">Main Page&gt;&gt;</asp:LinkButton>
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
