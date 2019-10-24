<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QualityAssuranceChecklistPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.QualityAssuranceChecklistPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 433px">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="582px">
            <asp:Label ID="lblQuestion1" runat="server" Text="- Is the product the coreect size??"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblQuestion2" runat="server" Text="- Is the product damaged?"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblQuestion3" runat="server" Text="-Is the product the right color?"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblQuestion4" runat="server" Text="- Does the product have the correct printing/engraving?"></asp:Label>
            <br />
            </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="1262px">
            <asp:Label ID="lblNotificationSpecialist" runat="server" Text="Notification Messages"></asp:Label>
            <asp:GridView ID="grdNotificationSpecialist" runat="server" AutoGenerateColumns="False" DataKeyNames="notificationID" DataSourceID="SqlDataSource_tblNotificationSpecialist">
                <Columns>
                    <asp:BoundField DataField="notificationID" HeaderText="notificationID" InsertVisible="False" ReadOnly="True" SortExpression="notificationID" />
                    <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                    <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_tblNotificationSpecialist" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblNotificationPrintingSpecialist] ORDER BY [notificationID] DESC"></asp:SqlDataSource>
            &nbsp;<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Orders" ></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource_tblOrder">
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
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_tblOrder" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblOrder] WHERE [orderId] = ? AND (([orderName] = ?) OR ([orderName] IS NULL AND ? IS NULL)) AND (([customerName] = ?) OR ([customerName] IS NULL AND ? IS NULL)) AND (([inventoryName] = ?) OR ([inventoryName] IS NULL AND ? IS NULL)) AND (([orderDate] = ?) OR ([orderDate] IS NULL AND ? IS NULL)) AND (([orderText] = ?) OR ([orderText] IS NULL AND ? IS NULL)) AND (([orderPrice] = ?) OR ([orderPrice] IS NULL AND ? IS NULL)) AND (([orderStatus] = ?) OR ([orderStatus] IS NULL AND ? IS NULL)) AND (([messageId] = ?) OR ([messageId] IS NULL AND ? IS NULL)) AND (([orderQualityCheck] = ?) OR ([orderQualityCheck] IS NULL AND ? IS NULL)) AND (([orderPaid] = ?) OR ([orderPaid] IS NULL AND ? IS NULL)) AND (([assignedSpecialist] = ?) OR ([assignedSpecialist] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblOrder] ([orderId], [orderName], [customerName], [inventoryName], [orderDate], [orderText], [orderPrice], [orderStatus], [messageId], [orderQualityCheck], [orderPaid], [assignedSpecialist]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblOrder]" UpdateCommand="UPDATE [tblOrder] SET [orderName] = ?, [customerName] = ?, [inventoryName] = ?, [orderDate] = ?, [orderText] = ?, [orderPrice] = ?, [orderStatus] = ?, [messageId] = ?, [orderQualityCheck] = ?, [orderPaid] = ?, [assignedSpecialist] = ? WHERE [orderId] = ? AND (([orderName] = ?) OR ([orderName] IS NULL AND ? IS NULL)) AND (([customerName] = ?) OR ([customerName] IS NULL AND ? IS NULL)) AND (([inventoryName] = ?) OR ([inventoryName] IS NULL AND ? IS NULL)) AND (([orderDate] = ?) OR ([orderDate] IS NULL AND ? IS NULL)) AND (([orderText] = ?) OR ([orderText] IS NULL AND ? IS NULL)) AND (([orderPrice] = ?) OR ([orderPrice] IS NULL AND ? IS NULL)) AND (([orderStatus] = ?) OR ([orderStatus] IS NULL AND ? IS NULL)) AND (([messageId] = ?) OR ([messageId] IS NULL AND ? IS NULL)) AND (([orderQualityCheck] = ?) OR ([orderQualityCheck] IS NULL AND ? IS NULL)) AND (([orderPaid] = ?) OR ([orderPaid] IS NULL AND ? IS NULL)) AND (([assignedSpecialist] = ?) OR ([assignedSpecialist] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_orderId" Type="Int32" />
                    <asp:Parameter Name="original_orderName" Type="String" />
                    <asp:Parameter Name="original_orderName" Type="String" />
                    <asp:Parameter Name="original_customerName" Type="String" />
                    <asp:Parameter Name="original_customerName" Type="String" />
                    <asp:Parameter Name="original_inventoryName" Type="String" />
                    <asp:Parameter Name="original_inventoryName" Type="String" />
                    <asp:Parameter Name="original_orderDate" Type="String" />
                    <asp:Parameter Name="original_orderDate" Type="String" />
                    <asp:Parameter Name="original_orderText" Type="String" />
                    <asp:Parameter Name="original_orderText" Type="String" />
                    <asp:Parameter Name="original_orderPrice" Type="String" />
                    <asp:Parameter Name="original_orderPrice" Type="String" />
                    <asp:Parameter Name="original_orderStatus" Type="String" />
                    <asp:Parameter Name="original_orderStatus" Type="String" />
                    <asp:Parameter Name="original_messageId" Type="String" />
                    <asp:Parameter Name="original_messageId" Type="String" />
                    <asp:Parameter Name="original_orderQualityCheck" Type="String" />
                    <asp:Parameter Name="original_orderQualityCheck" Type="String" />
                    <asp:Parameter Name="original_orderPaid" Type="String" />
                    <asp:Parameter Name="original_orderPaid" Type="String" />
                    <asp:Parameter Name="original_assignedSpecialist" Type="String" />
                    <asp:Parameter Name="original_assignedSpecialist" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="orderId" Type="Int32" />
                    <asp:Parameter Name="orderName" Type="String" />
                    <asp:Parameter Name="customerName" Type="String" />
                    <asp:Parameter Name="inventoryName" Type="String" />
                    <asp:Parameter Name="orderDate" Type="String" />
                    <asp:Parameter Name="orderText" Type="String" />
                    <asp:Parameter Name="orderPrice" Type="String" />
                    <asp:Parameter Name="orderStatus" Type="String" />
                    <asp:Parameter Name="messageId" Type="String" />
                    <asp:Parameter Name="orderQualityCheck" Type="String" />
                    <asp:Parameter Name="orderPaid" Type="String" />
                    <asp:Parameter Name="assignedSpecialist" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="orderName" Type="String" />
                    <asp:Parameter Name="customerName" Type="String" />
                    <asp:Parameter Name="inventoryName" Type="String" />
                    <asp:Parameter Name="orderDate" Type="String" />
                    <asp:Parameter Name="orderText" Type="String" />
                    <asp:Parameter Name="orderPrice" Type="String" />
                    <asp:Parameter Name="orderStatus" Type="String" />
                    <asp:Parameter Name="messageId" Type="String" />
                    <asp:Parameter Name="orderQualityCheck" Type="String" />
                    <asp:Parameter Name="orderPaid" Type="String" />
                    <asp:Parameter Name="assignedSpecialist" Type="String" />
                    <asp:Parameter Name="original_orderId" Type="Int32" />
                    <asp:Parameter Name="original_orderName" Type="String" />
                    <asp:Parameter Name="original_orderName" Type="String" />
                    <asp:Parameter Name="original_customerName" Type="String" />
                    <asp:Parameter Name="original_customerName" Type="String" />
                    <asp:Parameter Name="original_inventoryName" Type="String" />
                    <asp:Parameter Name="original_inventoryName" Type="String" />
                    <asp:Parameter Name="original_orderDate" Type="String" />
                    <asp:Parameter Name="original_orderDate" Type="String" />
                    <asp:Parameter Name="original_orderText" Type="String" />
                    <asp:Parameter Name="original_orderText" Type="String" />
                    <asp:Parameter Name="original_orderPrice" Type="String" />
                    <asp:Parameter Name="original_orderPrice" Type="String" />
                    <asp:Parameter Name="original_orderStatus" Type="String" />
                    <asp:Parameter Name="original_orderStatus" Type="String" />
                    <asp:Parameter Name="original_messageId" Type="String" />
                    <asp:Parameter Name="original_messageId" Type="String" />
                    <asp:Parameter Name="original_orderQualityCheck" Type="String" />
                    <asp:Parameter Name="original_orderQualityCheck" Type="String" />
                    <asp:Parameter Name="original_orderPaid" Type="String" />
                    <asp:Parameter Name="original_orderPaid" Type="String" />
                    <asp:Parameter Name="original_assignedSpecialist" Type="String" />
                    <asp:Parameter Name="original_assignedSpecialist" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:TextBox ID="txtNotificationSpecialist" runat="server" Height="152px" Width="281px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnNotificationSpecialist" runat="server" OnClick="btnNotificationSpecialist_Click" Text="Send Notification" Width="273px" />
            &nbsp;<asp:Label ID="lblErrorNotificationSpecialist" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </asp:Panel>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MainPage.aspx">&lt;&lt;Back</asp:LinkButton>
    </form>
</body>
</html>
