<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderInformationPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.OrderInformationPage" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="948px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" ReadOnly="True" SortExpression="orderId" />
                            <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" />
                            <asp:BoundField DataField="inventoryId" HeaderText="inventoryId" SortExpression="inventoryId" />
                            <asp:BoundField DataField="orderDate" HeaderText="orderDate" SortExpression="orderDate" />
                            <asp:BoundField DataField="orderText" HeaderText="orderText" SortExpression="orderText" />
                            <asp:BoundField DataField="orderName" HeaderText="orderName" SortExpression="orderName" />
                            <asp:BoundField DataField="orderPrice" HeaderText="orderPrice" SortExpression="orderPrice" />
                            <asp:BoundField DataField="employeeId" HeaderText="employeeId" SortExpression="employeeId" />
                            <asp:BoundField DataField="orderStatusId" HeaderText="orderStatusId" SortExpression="orderStatusId" />
                            <asp:BoundField DataField="paymentId" HeaderText="paymentId" SortExpression="paymentId" />
                            <asp:BoundField DataField="messageId" HeaderText="messageId" SortExpression="messageId" />
                            <asp:BoundField DataField="qualityListId" HeaderText="qualityListId" SortExpression="qualityListId" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wsc_v4ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:wsc_v4ConnectionString2.ProviderName %>" SelectCommand="SELECT [orderId], [customerId], [inventoryId], [orderDate], [orderText], [orderName], [orderPrice], [employeeId], [orderStatusId], [paymentId], [messageId], [qualityListId] FROM [tblOrder]"></asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Search order by order name"></asp:Label>
            &nbsp;<asp:TextBox ID="txtSearchOrder" runat="server"></asp:TextBox>
            &nbsp; <asp:Button ID="btnSearch" runat="server" Text="Search" PostBackUrl="~/ViewOrder.aspx" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorOrder" runat="server" ControlToValidate="txtSearchOrder" ErrorMessage="Please enter the order name to search" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">Create New Order</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="linkMainPage" runat="server" PostBackUrl="~/MainPage.aspx">Main Page&gt;&gt;</asp:LinkButton>
        </asp:Panel>
    </form>
</body>
</html>
