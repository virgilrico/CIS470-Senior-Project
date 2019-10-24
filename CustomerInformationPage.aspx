<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.CustomerInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1425px">
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="1405px">
            <div class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDataSource_tblCustomer" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                        <asp:BoundField DataField="customerFirstName" HeaderText="customerFirstName" SortExpression="customerFirstName" />
                        <asp:BoundField DataField="customerLastName" HeaderText="customerLastName" SortExpression="customerLastName" />
                        <asp:BoundField DataField="customerUserName" HeaderText="customerUserName" SortExpression="customerUserName" />
                        <asp:BoundField DataField="customerEmail" HeaderText="customerEmail" SortExpression="customerEmail" />
                        <asp:BoundField DataField="customerAddress" HeaderText="customerAddress" SortExpression="customerAddress" />
                        <asp:BoundField DataField="customerCity" HeaderText="customerCity" SortExpression="customerCity" />
                        <asp:BoundField DataField="customerState" HeaderText="customerState" SortExpression="customerState" />
                        <asp:BoundField DataField="customerZip" HeaderText="customerZip" SortExpression="customerZip" />
                        <asp:BoundField DataField="customerPhone" HeaderText="customerPhone" SortExpression="customerPhone" />
                        <asp:BoundField DataField="customerPayMethod" HeaderText="customerPayMethod" SortExpression="customerPayMethod" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_tblCustomer" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblCustomer] WHERE [customerId] = ? AND (([customerFirstName] = ?) OR ([customerFirstName] IS NULL AND ? IS NULL)) AND (([customerLastName] = ?) OR ([customerLastName] IS NULL AND ? IS NULL)) AND (([customerUserName] = ?) OR ([customerUserName] IS NULL AND ? IS NULL)) AND (([customerEmail] = ?) OR ([customerEmail] IS NULL AND ? IS NULL)) AND (([customerAddress] = ?) OR ([customerAddress] IS NULL AND ? IS NULL)) AND (([customerCity] = ?) OR ([customerCity] IS NULL AND ? IS NULL)) AND (([customerState] = ?) OR ([customerState] IS NULL AND ? IS NULL)) AND (([customerZip] = ?) OR ([customerZip] IS NULL AND ? IS NULL)) AND (([customerPhone] = ?) OR ([customerPhone] IS NULL AND ? IS NULL)) AND (([customerPayMethod] = ?) OR ([customerPayMethod] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblCustomer] ([customerId], [customerFirstName], [customerLastName], [customerUserName], [customerEmail], [customerAddress], [customerCity], [customerState], [customerZip], [customerPhone], [customerPayMethod]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblCustomer]" UpdateCommand="UPDATE [tblCustomer] SET [customerFirstName] = ?, [customerLastName] = ?, [customerUserName] = ?, [customerEmail] = ?, [customerAddress] = ?, [customerCity] = ?, [customerState] = ?, [customerZip] = ?, [customerPhone] = ?, [customerPayMethod] = ? WHERE [customerId] = ? AND (([customerFirstName] = ?) OR ([customerFirstName] IS NULL AND ? IS NULL)) AND (([customerLastName] = ?) OR ([customerLastName] IS NULL AND ? IS NULL)) AND (([customerUserName] = ?) OR ([customerUserName] IS NULL AND ? IS NULL)) AND (([customerEmail] = ?) OR ([customerEmail] IS NULL AND ? IS NULL)) AND (([customerAddress] = ?) OR ([customerAddress] IS NULL AND ? IS NULL)) AND (([customerCity] = ?) OR ([customerCity] IS NULL AND ? IS NULL)) AND (([customerState] = ?) OR ([customerState] IS NULL AND ? IS NULL)) AND (([customerZip] = ?) OR ([customerZip] IS NULL AND ? IS NULL)) AND (([customerPhone] = ?) OR ([customerPhone] IS NULL AND ? IS NULL)) AND (([customerPayMethod] = ?) OR ([customerPayMethod] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_customerId" Type="Int32" />
                        <asp:Parameter Name="original_customerFirstName" Type="String" />
                        <asp:Parameter Name="original_customerFirstName" Type="String" />
                        <asp:Parameter Name="original_customerLastName" Type="String" />
                        <asp:Parameter Name="original_customerLastName" Type="String" />
                        <asp:Parameter Name="original_customerUserName" Type="String" />
                        <asp:Parameter Name="original_customerUserName" Type="String" />
                        <asp:Parameter Name="original_customerEmail" Type="String" />
                        <asp:Parameter Name="original_customerEmail" Type="String" />
                        <asp:Parameter Name="original_customerAddress" Type="String" />
                        <asp:Parameter Name="original_customerAddress" Type="String" />
                        <asp:Parameter Name="original_customerCity" Type="String" />
                        <asp:Parameter Name="original_customerCity" Type="String" />
                        <asp:Parameter Name="original_customerState" Type="String" />
                        <asp:Parameter Name="original_customerState" Type="String" />
                        <asp:Parameter Name="original_customerZip" Type="String" />
                        <asp:Parameter Name="original_customerZip" Type="String" />
                        <asp:Parameter Name="original_customerPhone" Type="String" />
                        <asp:Parameter Name="original_customerPhone" Type="String" />
                        <asp:Parameter Name="original_customerPayMethod" Type="String" />
                        <asp:Parameter Name="original_customerPayMethod" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="customerId" Type="Int32" />
                        <asp:Parameter Name="customerFirstName" Type="String" />
                        <asp:Parameter Name="customerLastName" Type="String" />
                        <asp:Parameter Name="customerUserName" Type="String" />
                        <asp:Parameter Name="customerEmail" Type="String" />
                        <asp:Parameter Name="customerAddress" Type="String" />
                        <asp:Parameter Name="customerCity" Type="String" />
                        <asp:Parameter Name="customerState" Type="String" />
                        <asp:Parameter Name="customerZip" Type="String" />
                        <asp:Parameter Name="customerPhone" Type="String" />
                        <asp:Parameter Name="customerPayMethod" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="customerFirstName" Type="String" />
                        <asp:Parameter Name="customerLastName" Type="String" />
                        <asp:Parameter Name="customerUserName" Type="String" />
                        <asp:Parameter Name="customerEmail" Type="String" />
                        <asp:Parameter Name="customerAddress" Type="String" />
                        <asp:Parameter Name="customerCity" Type="String" />
                        <asp:Parameter Name="customerState" Type="String" />
                        <asp:Parameter Name="customerZip" Type="String" />
                        <asp:Parameter Name="customerPhone" Type="String" />
                        <asp:Parameter Name="customerPayMethod" Type="String" />
                        <asp:Parameter Name="original_customerId" Type="Int32" />
                        <asp:Parameter Name="original_customerFirstName" Type="String" />
                        <asp:Parameter Name="original_customerFirstName" Type="String" />
                        <asp:Parameter Name="original_customerLastName" Type="String" />
                        <asp:Parameter Name="original_customerLastName" Type="String" />
                        <asp:Parameter Name="original_customerUserName" Type="String" />
                        <asp:Parameter Name="original_customerUserName" Type="String" />
                        <asp:Parameter Name="original_customerEmail" Type="String" />
                        <asp:Parameter Name="original_customerEmail" Type="String" />
                        <asp:Parameter Name="original_customerAddress" Type="String" />
                        <asp:Parameter Name="original_customerAddress" Type="String" />
                        <asp:Parameter Name="original_customerCity" Type="String" />
                        <asp:Parameter Name="original_customerCity" Type="String" />
                        <asp:Parameter Name="original_customerState" Type="String" />
                        <asp:Parameter Name="original_customerState" Type="String" />
                        <asp:Parameter Name="original_customerZip" Type="String" />
                        <asp:Parameter Name="original_customerZip" Type="String" />
                        <asp:Parameter Name="original_customerPhone" Type="String" />
                        <asp:Parameter Name="original_customerPhone" Type="String" />
                        <asp:Parameter Name="original_customerPayMethod" Type="String" />
                        <asp:Parameter Name="original_customerPayMethod" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Search for customer by last name"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtSearchName" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" PostBackUrl="~/ViewCustomer.aspx" Text="Search" />
                    &nbsp;<asp:Label ID="lblErrorSearchLastName" runat="server"></asp:Label>
                </asp:Panel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="imgBtnAddCustomer" runat="server" CssClass="auto-style2" Height="90px" ImageUrl="~/Images/iconfinder_selected_user_1902265.png" OnClick="imgBtnAddCustomer_Click" PostBackUrl="~/AddCustomerPage.aspx" Width="90px" />
                <asp:LinkButton ID="linkbtnAddCustomer" runat="server" OnClick="btnAddCustomer_Click" PostBackUrl="~/AddCustomerPage.aspx">Add Customer</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl="~/Images/home.png" Width="75px" />
                <asp:LinkButton ID="linkHomePage" runat="server" OnClick="LinkButton1_Click1" PostBackUrl="~/MainPage.aspx" style="text-align: left">Home Page&gt;&gt;</asp:LinkButton>
                <br />
                <br />
            </div>
           
        </asp:Panel>
    </form>
</body>
</html>
