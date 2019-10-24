<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOrderPage.aspx.cs" Inherits="CIS470_Senior_Course_Project.AddOrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Images/facebook_cover_photo_1.png" Width="539px" />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
             
                    <div class="auto-style1">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" DeleteCommand="DELETE FROM [tblOrder] WHERE [orderId] = ? AND (([orderName] = ?) OR ([orderName] IS NULL AND ? IS NULL)) AND (([customerName] = ?) OR ([customerName] IS NULL AND ? IS NULL)) AND (([inventoryName] = ?) OR ([inventoryName] IS NULL AND ? IS NULL)) AND (([orderDate] = ?) OR ([orderDate] IS NULL AND ? IS NULL)) AND (([orderText] = ?) OR ([orderText] IS NULL AND ? IS NULL)) AND (([orderPrice] = ?) OR ([orderPrice] IS NULL AND ? IS NULL)) AND (([orderStatus] = ?) OR ([orderStatus] IS NULL AND ? IS NULL)) AND (([messageId] = ?) OR ([messageId] IS NULL AND ? IS NULL)) AND (([orderQualityCheck] = ?) OR ([orderQualityCheck] IS NULL AND ? IS NULL)) AND (([orderPaid] = ?) OR ([orderPaid] IS NULL AND ? IS NULL)) AND (([assignedSpecialist] = ?) OR ([assignedSpecialist] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblOrder] ([orderId], [orderName], [customerName], [inventoryName], [orderDate], [orderText], [orderPrice], [orderStatus], [messageId], [orderQualityCheck], [orderPaid], [assignedSpecialist]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblOrder]" UpdateCommand="UPDATE [tblOrder] SET [orderName] = ?, [customerName] = ?, [inventoryName] = ?, [orderDate] = ?, [orderText] = ?, [orderPrice] = ?, [orderStatus] = ?, [messageId] = ?, [orderQualityCheck] = ?, [orderPaid] = ?, [assignedSpecialist] = ? WHERE [orderId] = ? AND (([orderName] = ?) OR ([orderName] IS NULL AND ? IS NULL)) AND (([customerName] = ?) OR ([customerName] IS NULL AND ? IS NULL)) AND (([inventoryName] = ?) OR ([inventoryName] IS NULL AND ? IS NULL)) AND (([orderDate] = ?) OR ([orderDate] IS NULL AND ? IS NULL)) AND (([orderText] = ?) OR ([orderText] IS NULL AND ? IS NULL)) AND (([orderPrice] = ?) OR ([orderPrice] IS NULL AND ? IS NULL)) AND (([orderStatus] = ?) OR ([orderStatus] IS NULL AND ? IS NULL)) AND (([messageId] = ?) OR ([messageId] IS NULL AND ? IS NULL)) AND (([orderQualityCheck] = ?) OR ([orderQualityCheck] IS NULL AND ? IS NULL)) AND (([orderPaid] = ?) OR ([orderPaid] IS NULL AND ? IS NULL)) AND (([assignedSpecialist] = ?) OR ([assignedSpecialist] IS NULL AND ? IS NULL))">
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
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <asp:Label ID="lblOrderName" runat="server" Text="Order Name"></asp:Label>
            &nbsp;<asp:TextBox ID="txtOrderName" runat="server"></asp:TextBox>
            &nbsp;<asp:Label ID="lblErrorOrderName" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name"></asp:Label>
            &nbsp;<asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblErrorCustomerName" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="InventoryName" runat="server" Text="Inventory Name"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddlInventoryName" runat="server" DataSourceID="SqlDataSource2" DataTextField="productName" DataValueField="productName" OnSelectedIndexChanged="ddlInventoryName_SelectedIndexChanged">
            
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\wsc_v4.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [tblInventory]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="lblOrderDate" runat="server" Text="Order Date"></asp:Label>
            &nbsp;<asp:TextBox ID="txtOrderDate" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblErrorOrderDate" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblOrderText" runat="server" Text="Order Text"></asp:Label>
            &nbsp;<asp:TextBox ID="txtOrderText" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblErrorOrderText" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblOrderPrice" runat="server" Text="Order Price"></asp:Label>
            &nbsp;<asp:TextBox ID="txtOrderPrice" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblErrorOrderPrice" runat="server" Text=""></asp:Label>
            <br />
            &nbsp;&nbsp;<br />
            <br />
            <asp:Button ID="btnAddOrder" runat="server" OnClick="btnAddOrder_Click" Text="Add Order" />
            <br />
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <br />
            <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/OrderInformationPage.aspx">&lt;&lt;Back</asp:LinkButton>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
