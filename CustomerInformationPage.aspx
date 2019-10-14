<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.CustomerInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            height: 536px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1425px">
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="1405px">
            <div class="auto-style1">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                                <asp:BoundField DataField="customerFirstName" HeaderText="customerFirstName" SortExpression="customerFirstName" />
                                <asp:BoundField DataField="customerLastName" HeaderText="customerLastName" SortExpression="customerLastName" />
                                <asp:BoundField DataField="customerUserName" HeaderText="customerUserName" SortExpression="customerUserName" />
                                <asp:BoundField DataField="customerEmail" HeaderText="customerEmail" SortExpression="customerEmail" />
                                <asp:BoundField DataField="customerAddress" HeaderText="customerAddress" SortExpression="customerAddress" />
                                <asp:BoundField DataField="customerState" HeaderText="customerState" SortExpression="customerState" />
                                <asp:BoundField DataField="customerCity" HeaderText="customerCity" SortExpression="customerCity" />
                                <asp:BoundField DataField="customerZip" HeaderText="customerZip" SortExpression="customerZip" />
                                <asp:BoundField DataField="customerPhone" HeaderText="customerPhone" SortExpression="customerPhone" />
                                <asp:BoundField DataField="customerAcctBalance" HeaderText="customerAcctBalance" SortExpression="customerAcctBalance" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wsc_v4ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:wsc_v4ConnectionString2.ProviderName %>" SelectCommand="SELECT [customerId], [customerFirstName], [customerLastName], [customerUserName], [customerEmail], [customerAddress], [customerState], [customerCity], [customerZip], [customerPhone], [customerAcctBalance] FROM [tblCustomer]"></asp:SqlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Search for customer by last name"></asp:Label>
                &nbsp;<asp:TextBox ID="txtSearchName" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" PostBackUrl="~/ViewCustomer.aspx" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtSearchName" ErrorMessage="Please enter customers last name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:LinkButton ID="btnAddCustomer" runat="server" PostBackUrl="~/AddCustomerPage.aspx">Add Customer</asp:LinkButton>
&nbsp;
                <asp:ImageButton ID="imgBtnAddCustomer" runat="server" ImageUrl="~/Images/iconfinder_selected_user_1902265.png" Width="143px" />
                <br />
                <asp:LinkButton ID="btnEditCustomer" runat="server" PostBackUrl="~/EditCustomerPage.aspx">Edit Customer</asp:LinkButton>
                &nbsp;&nbsp;
                <asp:ImageButton ID="imgBtnEditCustomer" runat="server" ImageUrl="~/Images/iconfinder_user_close_edit_103748.png" Width="123px" />
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
