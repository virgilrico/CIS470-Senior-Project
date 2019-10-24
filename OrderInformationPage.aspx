<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.OrderInformationPage" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" "https://www.flaticon.com/authors/freepik">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="714px">
            <div class="auto-style1">
                <br />
                <asp:Panel ID="Panel3" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Search order by order name"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtSearchOrder" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnSearch" runat="server"  PostBackUrl="~/ViewOrder.aspx" Text="Search" />
                    &nbsp;<asp:Label ID="lblErrorOrder" runat="server"></asp:Label>
                </asp:Panel>
                <br />
                <asp:GridView ID="grdOrderTable" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource_tblOrder" OnSelectedIndexChanged="grdOrderTable_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" ReadOnly="True" SortExpression="orderId" />
                        <asp:BoundField DataField="orderName" HeaderText="orderName" SortExpression="orderName" />
                        <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                        <asp:BoundField DataField="inventoryName" HeaderText="inventoryName" SortExpression="inventoryName" />
                        <asp:BoundField DataField="orderDate" HeaderText="orderDate" SortExpression="orderDate" />
                        <asp:BoundField DataField="orderText" HeaderText="orderText" SortExpression="orderText" />
                        <asp:BoundField DataField="orderPrice" HeaderText="orderPrice" SortExpression="orderPrice" />
                        <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" SortExpression="orderStatus" />
                        <asp:BoundField DataField="messageId" HeaderText="messageId" SortExpression="messageId" />
                        <asp:BoundField DataField="orderQualityCheck" HeaderText="orderQualityCheck" SortExpression="orderQualityCheck" />
                        <asp:BoundField DataField="orderPaid" HeaderText="orderPaid" SortExpression="orderPaid" />
                        <asp:BoundField DataField="assignedSpecialist" HeaderText="assignedSpecialist" SortExpression="assignedSpecialist" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_tblOrder" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblOrder]"></asp:SqlDataSource>
                <br />
                
                <br />
                &nbsp;&nbsp; &nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imgCreateNewOrder" runat="server" Height="75px" ImageUrl="~/Images/cart.png" Width="75px" />
                <asp:LinkButton ID="linkCreateNewOrder" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/AddOrderPage.aspx">Create New Order</asp:LinkButton>
                <br />
                <br />
                <asp:Image ID="imgEditOrder" runat="server" Height="75px" ImageUrl="~/Images/iconfinder_EditDocument_728933.png" Width="75px" />
                <asp:LinkButton ID="linkEditOrder" runat="server" PostBackUrl="~/EditOrder.aspx" OnClick="LinkButton1_Click1">Edit Order</asp:LinkButton>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imgEditValidateOrder" runat="server" Height="75px" ImageUrl="~/Images/iconfinder_EditDocument_728933.png" Width="75px" />
                <asp:LinkButton ID="linkEditValidateOrder" runat="server" PostBackUrl="~/EditOrder.aspx">Edit and Validate Order</asp:LinkButton>
                <br />
                <br />
                &nbsp;<asp:Image ID="imgHomePage" runat="server" Height="75px" ImageUrl="~/Images/home.png" Width="75px" />
                <asp:LinkButton ID="linkMainPage" runat="server" OnClick="linkMainPage_Click" PostBackUrl="~/MainPage.aspx">Home Page</asp:LinkButton>
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
