<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditInventory.aspx.cs" Inherits="CIS470_Senior_Course_Project.EditInventory" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="566px">
            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Images/home.png" Width="30px" />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MainPage.aspx">Home Page</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="inventoryId" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="inventoryId" HeaderText="inventoryId" InsertVisible="False" ReadOnly="True" SortExpression="inventoryId" />
                    <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                    <asp:BoundField DataField="productDesc" HeaderText="productDesc" SortExpression="productDesc" />
                    <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice" />
                    <asp:BoundField DataField="productQtyInStock" HeaderText="productQtyInStock" SortExpression="productQtyInStock" />
                    <asp:BoundField DataField="productReorderQty" HeaderText="productReorderQty" SortExpression="productReorderQty" />
                    <asp:BoundField DataField="productDeliveryDate" HeaderText="productDeliveryDate" SortExpression="productDeliveryDate" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:wsc_v6ConnectionString_EditInventory %>" DeleteCommand="DELETE FROM [tblInventory] WHERE [inventoryId] = ? AND (([productName] = ?) OR ([productName] IS NULL AND ? IS NULL)) AND (([productDesc] = ?) OR ([productDesc] IS NULL AND ? IS NULL)) AND (([productPrice] = ?) OR ([productPrice] IS NULL AND ? IS NULL)) AND (([productQtyInStock] = ?) OR ([productQtyInStock] IS NULL AND ? IS NULL)) AND (([productReorderQty] = ?) OR ([productReorderQty] IS NULL AND ? IS NULL)) AND (([productDeliveryDate] = ?) OR ([productDeliveryDate] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblInventory] ([inventoryId], [productName], [productDesc], [productPrice], [productQtyInStock], [productReorderQty], [productDeliveryDate]) VALUES (?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:wsc_v6ConnectionString_EditInventory.ProviderName %>" SelectCommand="SELECT * FROM [tblInventory]" UpdateCommand="UPDATE [tblInventory] SET [productName] = ?, [productDesc] = ?, [productPrice] = ?, [productQtyInStock] = ?, [productReorderQty] = ?, [productDeliveryDate] = ? WHERE [inventoryId] = ? AND (([productName] = ?) OR ([productName] IS NULL AND ? IS NULL)) AND (([productDesc] = ?) OR ([productDesc] IS NULL AND ? IS NULL)) AND (([productPrice] = ?) OR ([productPrice] IS NULL AND ? IS NULL)) AND (([productQtyInStock] = ?) OR ([productQtyInStock] IS NULL AND ? IS NULL)) AND (([productReorderQty] = ?) OR ([productReorderQty] IS NULL AND ? IS NULL)) AND (([productDeliveryDate] = ?) OR ([productDeliveryDate] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_inventoryId" Type="Int32" />
                    <asp:Parameter Name="original_productName" Type="String" />
                    <asp:Parameter Name="original_productName" Type="String" />
                    <asp:Parameter Name="original_productDesc" Type="String" />
                    <asp:Parameter Name="original_productDesc" Type="String" />
                    <asp:Parameter Name="original_productPrice" Type="String" />
                    <asp:Parameter Name="original_productPrice" Type="String" />
                    <asp:Parameter Name="original_productQtyInStock" Type="String" />
                    <asp:Parameter Name="original_productQtyInStock" Type="String" />
                    <asp:Parameter Name="original_productReorderQty" Type="String" />
                    <asp:Parameter Name="original_productReorderQty" Type="String" />
                    <asp:Parameter Name="original_productDeliveryDate" Type="String" />
                    <asp:Parameter Name="original_productDeliveryDate" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="inventoryId" Type="Int32" />
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="productDesc" Type="String" />
                    <asp:Parameter Name="productPrice" Type="String" />
                    <asp:Parameter Name="productQtyInStock" Type="String" />
                    <asp:Parameter Name="productReorderQty" Type="String" />
                    <asp:Parameter Name="productDeliveryDate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="productDesc" Type="String" />
                    <asp:Parameter Name="productPrice" Type="String" />
                    <asp:Parameter Name="productQtyInStock" Type="String" />
                    <asp:Parameter Name="productReorderQty" Type="String" />
                    <asp:Parameter Name="productDeliveryDate" Type="String" />
                    <asp:Parameter Name="original_inventoryId" Type="Int32" />
                    <asp:Parameter Name="original_productName" Type="String" />
                    <asp:Parameter Name="original_productName" Type="String" />
                    <asp:Parameter Name="original_productDesc" Type="String" />
                    <asp:Parameter Name="original_productDesc" Type="String" />
                    <asp:Parameter Name="original_productPrice" Type="String" />
                    <asp:Parameter Name="original_productPrice" Type="String" />
                    <asp:Parameter Name="original_productQtyInStock" Type="String" />
                    <asp:Parameter Name="original_productQtyInStock" Type="String" />
                    <asp:Parameter Name="original_productReorderQty" Type="String" />
                    <asp:Parameter Name="original_productReorderQty" Type="String" />
                    <asp:Parameter Name="original_productDeliveryDate" Type="String" />
                    <asp:Parameter Name="original_productDeliveryDate" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Panel ID="panelNotificationSpecialist" runat="server">
                <asp:Label ID="lblNotificationSpecialist" runat="server" Text="Notification Message Box"></asp:Label>
                <br />
                <asp:TextBox ID="txtNotificationSpecialist" runat="server" Height="80px" Width="199px"></asp:TextBox>
                &nbsp;<asp:Button ID="btnNotificationSpecialist" runat="server" Text="Send Notification" OnClick="btnNotificationSpecialist_Click" />
                <br />
                <asp:Label ID="lblErrorNotificationSpecialist" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="panelNotificationClerk" runat="server">
                <asp:Label ID="lblNotificationClerk" runat="server" Text="Notification Message Box"></asp:Label>
                <br />
                <asp:TextBox ID="txtNotificationClerk" runat="server" Height="91px" Width="198px"></asp:TextBox>
                &nbsp;<asp:Button ID="btnNotificationClerk" runat="server" Text="Send Notification" OnClick="btnNotificationClerk_Click" />
                <br />
                <asp:Label ID="lblErrorNotificationClerk" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
